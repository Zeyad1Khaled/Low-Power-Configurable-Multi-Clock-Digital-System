# System Architecture

The design is a UART-commanded digital system. A host sends register or ALU
commands to the system's UART receiver. The controller coordinates register
access and ALU operations, then returns response data through a transmit FIFO
and UART transmitter.

## Functional blocks

| Block | Implementation | Responsibility |
| --- | --- | --- |
| UART receiver | `rtl/UART/UART_RX.sv` and supporting UART modules | Samples serial input, checks framing/parity, and produces parallel bytes |
| Data synchronizer | `rtl/DataSynch_RstSynch_PulseGen/DATA_SYNCH.v` | Transfers received data and its enable into the reference-clock domain |
| System controller | `rtl/SYS_Control_RegisterFile/SYS_CTRL.sv` | Decodes command bytes and sequences reads, writes, ALU work, and transmit responses |
| Register file | `rtl/SYS_Control_RegisterFile/Register.v` | Implements 16 default 8-bit registers and exposes registers 0–3 to control/configuration datapaths |
| ALU | `rtl/ALU/ALU.v` | Computes a 16-bit result from two 8-bit operands |
| Clock management | `rtl/ClkDiv_ClkGate/` | Divides the UART reference clock and gates the ALU clock |
| Response FIFO | `rtl/FIFO/Async_FIFO.v` and supporting FIFO modules | Crosses response bytes from the reference clock to the UART transmit clock |
| Reset synchronizers | `rtl/DataSynch_RstSynch_PulseGen/RST_SYNCH.v` | Synchronizes active-low reset deassertion in clock domains |

## Clock and data flow

The controller, register file, and ALU use the 50 MHz `REF_CLK` domain. ALU
clock gating is controlled by the system controller and is bypassed during
scan test mode. `UART_CLK` is 3.6864 MHz; programmable dividers provide the
UART transmit clock and the receive sampling clock.

Received parallel bytes and valid indications pass through a data synchronizer
before reaching the controller. Response bytes are written into an 8-entry
asynchronous FIFO in the reference domain and read in the transmit domain.
The TX-side pulse generator advances the FIFO as UART transmission completes.

The top-level design also contains scan-mode clock/reset selection and scan
ports. Functional operation uses the external reference/UART clocks and
synchronized active-low reset.

## Register map

The default register file has 16 entries addressed by a 4-bit address:

| Address | Name | Purpose | Reset value |
| --- | --- | --- | ---: |
| `0x0` | `REG0` | ALU operand A | `0x00` |
| `0x1` | `REG1` | ALU operand B | `0x00` |
| `0x2` | `REG2` | UART parity and receive prescale configuration | `0x81` |
| `0x3` | `REG3` | TX clock divider ratio | `0x20` |
| `0x4`–`0xF` | General-purpose | User data | `0x00` |

`REG2[0]` enables parity, `REG2[1]` selects parity type, and `REG2[7:2]`
contains the receive prescale. `REG3[5:0]` supplies the TX divider ratio.
The RTL maps receive prescales 8, 16, and 32 to receive divider ratios 4, 2,
and 1 respectively; other prescale values use ratio 1.

The controller permits configuration writes to addresses `0x2` and `0x3`
during initial setup and locks those configuration locations after both have
been written. General-purpose write commands are accepted for addresses 4 and
above, subject to the 4-bit address width and 16-entry depth.

## Parameterization

The top-level `sys_top` parameters define data width, ALU result width,
register-file depth/address width, ALU function width, FIFO depth/address
width, pointer size, and scan-chain count. Defaults are 8-bit data, a 16-bit
ALU result, 16 register entries, an 8-entry FIFO, and four scan chains.
