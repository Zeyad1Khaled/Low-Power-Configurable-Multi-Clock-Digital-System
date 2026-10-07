# UART Command Protocol

The host sends a command as a sequence of UART data frames. Each data frame
contains one 8-bit byte; UART parity is configurable and the receiver checks
the frame start/stop and optional parity bits.

## Commands

| Command byte | Payload bytes | Description |
| --- | --- | --- |
| `0xAA` | address, data | Write a register |
| `0xBB` | address | Read a register; the register value is returned over UART TX |
| `0xCC` | operand A, operand B, ALU function | Execute an ALU function using command-supplied operands |
| `0xDD` | ALU function | Execute an ALU function using the operands currently stored in `REG0` and `REG1` |

An ALU result is 16 bits and is sent least-significant byte first, followed by
the most-significant byte.

## Register configuration

| Address | Field | Meaning |
| --- | --- | --- |
| `0x2` | `REG2[0]` | Parity enable |
| `0x2` | `REG2[1]` | Parity type (`0`: even, `1`: odd) |
| `0x2` | `REG2[7:2]` | UART receive prescale |
| `0x3` | `REG3[5:0]` | UART TX clock division ratio |

Reset defaults are `REG2 = 0x81` (parity enabled, even parity, prescale 32)
and `REG3 = 0x20` (division ratio 32). In the top-level RTL, receive prescale
32 maps to a receive clock divider ratio of 1; values 16 and 8 map to ratios
2 and 4.

Addresses `0x0` and `0x1` are reserved for ALU operands. General register
write commands may target addresses 4 through `0xF` in the default 16-entry
register file. The system document describes the normal register range as
`0x4`–`0x15`, but the implemented 4-bit address and depth-16 RTL can address
only `0x0`–`0xF`.

## ALU function encoding

The function byte's low four bits are used by the controller.

| Function | Operation | Result when comparison is true |
| --- | --- | --- |
| `0x0` | A + B | Sum |
| `0x1` | A − B | Difference |
| `0x2` | A × B | Product |
| `0x3` | A ÷ B | Quotient |
| `0x4` | A AND B | Bitwise result |
| `0x5` | A OR B | Bitwise result |
| `0x6` | A NAND B | Bitwise result |
| `0x7` | A NOR B | Bitwise result |
| `0x8` | A XOR B | Bitwise result |
| `0x9` | A XNOR B | Bitwise result |
| `0xA` | A == B | 1 |
| `0xB` | A > B | 2 |
| `0xC` | A < B | 3 |
| `0xD` | A >> 1 | Shifted result |
| `0xE` | A << 1 | Shifted result |

The `<` comparison is implemented in `rtl/ALU/ALU.v` although it is not listed
in the supplied system PDF. Unlisted function values produce zero in the RTL.
