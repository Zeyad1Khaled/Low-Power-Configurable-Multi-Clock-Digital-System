# Consolidated Reports

This directory keeps the newest useful report set for each completed test or
flow stage. Equivalent duplicates and older runs were removed from the tool
output trees.

| Directory | Contents |
| --- | --- |
| `spyglass/` | Latest consolidated reports and run summary for RTL lint, CDC setup, clock/reset integrity, structural CDC, and CDC verification |
| `synthesis/pre-dft/` | Pre-DFT synthesis reports |
| `synthesis/post-dft/` | Latest post-DFT synthesis reports |
| `formality/` | Formality comparison reports and run logs |
| `pnr/` | Latest PNR clock-tree and post-route timing/geometry reports |

SpyGlass run summaries identify the goal, tool version, and waived/non-waived
message counts. The PNR reports are from the later `pnr1` run. Pre-DFT and
post-DFT reports are retained separately because they represent different flow
stages, not duplicate runs.
