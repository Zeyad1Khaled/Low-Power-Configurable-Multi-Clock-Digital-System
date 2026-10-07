# Verification and Implementation Results

This page summarizes the archived reports under [`../reports/`](../reports/).
The reports are historical tool outputs; they are not a fresh run of the
verification or implementation flows.

## Recorded results

| Flow | Evidence | Result |
| --- | --- | --- |
| Formal equivalence | [`reports/formality/fm.log`](../reports/formality/fm.log) | Formality reports `Verification SUCCEEDED`, 343 passing compare points, and 0 failing compare points |
| CDC verification | [`reports/spyglass/cdc-verification/run-summary.txt`](../reports/spyglass/cdc-verification/run-summary.txt) | 0 failed properties; 4 partial proofs out of 6 total; 0 unsynchronized crossings reported |
| RTL lint | [`reports/spyglass/rtl-lint/run-summary.txt`](../reports/spyglass/rtl-lint/run-summary.txt) | 1 waived error and 4 waived warnings; the run summary shows no non-waived errors or warnings |
| DFT checks | [`reports/synthesis/post-dft/dft_drc_post_dft.rpt`](../reports/synthesis/post-dft/dft_drc_post_dft.rpt) | 1 test-design-rule violation: constant-one latch `ALU_CG/Latch_Out_reg` |
| PNR geometry | [`reports/pnr/post-route/sys_top.geom.rpt`](../reports/pnr/post-route/sys_top.geom.rpt) | No geometry DRC violations found in this report |
| PNR antenna | [`reports/pnr/post-route/sys_top.antenna.rpt`](../reports/pnr/post-route/sys_top.antenna.rpt) | No antenna violations found in this report |

SpyGlass CDC verification also records 5 non-waived warnings and 1 waived
warning. A partial proof is not a completed proof; review the detailed CDC
reports before treating the crossing analysis as signoff.

## Scope and limitations

- The archived testbench drives configuration and ALU commands but does not
  automatically check the returned serial data against expected values.
- A clean geometry or antenna report does not establish that all physical
  signoff checks (for example, LVS or foundry signoff) passed.
- Synthesis timing and area reports depend on the archived constraints and
  technology-library setup. Consult the raw reports before quoting metrics.
- The report logs contain original machine paths and tool metadata; their
  location strings describe the historical run environment, not this checkout.
