# iruwbtx7

Open-source 7 GHz impulse-radio ultra-wideband (IR-UWB) transmitter design in the IHP SG13G2 BiCMOS process.

This repository contains the schematic, simulation setup, and selected layout sources for a pre-release IR-UWB transmitter developed with open-source IC design tooling.

## Overview

`iruwbtx7` is a transistor-level RF transmitter design targeting short impulse-radio UWB pulses around 7 GHz. The design includes a tunable oscillator, power amplifier, digital/control decoding, output matching elements, and layout files for selected RF passives.

The repository is intended for research, education, review, and further development of open-source RF integrated circuits.

## Status

Pre-release.

The design files are provided as-is and should be reviewed, simulated, and verified before any tapeout or reuse in another project.

## Target process

- Technology: IHP SG13G2
- PDK name used in the xschem setup: `ihp-sg13g2`
- Nominal supply voltage in the provided testbench: `1.5 V`

## Repository structure

```text
.
├── gds/
│   ├── backups/
│   ├── iruwbtx7_balun.gds
│   └── iruwbtx7_tank_inductor.gds
├── xschem/
│   ├── iruwbtx7.sch
│   ├── iruwbtx7.sym
│   ├── iruwbtx7_tb.sch
│   ├── iruwbtx7_PA.sch
│   ├── iruwbtx7_PA.sym
│   ├── iruwbtx7_PA_capBank.sch
│   ├── iruwbtx7_PA_capBank.sym
│   ├── iruwbtx7_PA_currentMirror.sch
│   ├── iruwbtx7_PA_currentMirror.sym
│   ├── iruwbtx7_PA_decoder.sch
│   ├── iruwbtx7_PA_decoder.sym
│   ├── iruwbtx7_balun.sch
│   ├── iruwbtx7_balun.sym
│   ├── iruwbtx7_osci_capBank.sch
│   ├── iruwbtx7_osci_capBank.sym
│   ├── iruwbtx7_osci_core.sch
│   ├── iruwbtx7_osci_core.sym
│   ├── iruwbtx7_osci_decoder.sch
│   ├── iruwbtx7_osci_decoder.sym
│   ├── iruwbtx7_osci_decoder_tb.sch
│   ├── iruwbtx7_tank_inductor.sch
│   ├── iruwbtx7_tank_inductor.sym
│   └── xschemrc
├── LICENSE
└── README.md
```

## Main blocks

The top-level transmitter schematic is `xschem/iruwbtx7.sch`.

It instantiates the following major blocks:

- `iruwbtx7_osci_core` — RF oscillator core
- `iruwbtx7_osci_capBank` — oscillator tuning capacitor bank
- `iruwbtx7_osci_decoder` — oscillator control decoder
- `iruwbtx7_tank_inductor` — tank inductor model/symbol
- `iruwbtx7_PA` — RF power amplifier
- `iruwbtx7_PA_capBank` — PA tuning/matching capacitor bank
- `iruwbtx7_PA_currentMirror` — PA bias/current mirror block
- `iruwbtx7_PA_decoder` — PA control decoder
- `iruwbtx7_balun` — RF balun / passive output network

## Preliminary nominal operating point

The top-level schematic contains the following nominal configuration notes:

| Parameter | Value |
|---|---:|
| RF frequency | `7.06 GHz` |
| DC power while sending pulse | `34.2 mW` |
| Pulse duration | `2.6 ns` |
| RF output power | `4 dBm @ 50 Ω load` |
| Supply voltage | approximately `1.5 V` |

Nominal control setting noted in the schematic:

```text
en_testmode = 0
ctrlF       = 01010
ctrlBW      = 00101
ctrlI       = 00101
ctrlBST     = 11111
ctrlBST_DEL = 001
ctrlG       = 0101
ctrlM       = 011
```

## Top-level interface

The top-level transmitter symbol exposes the following main signals:

### Supplies

| Signal | Description |
|---|---|
| `VDD` | Positive supply |
| `VSS` | Ground / negative supply |

### Inputs

| Signal | Width | Description |
|---|---:|---|
| `trig_in` | 1 | Trigger input for pulse generation |
| `en_testmode` | 1 | Test-mode enable |
| `ctrlF[4:0]` | 5 | Oscillator frequency tuning control |
| `ctrlBW[4:0]` | 5 | Bandwidth / pulse-shaping control |
| `ctrlBST_DEL[2:0]` | 3 | Boost delay control |
| `ctrlI[4:0]` | 5 | Bias/current control |
| `ctrlBST[4:0]` | 5 | Boost control |
| `ctrlG[3:0]` | 4 | PA gain/control word |
| `ctrlM[2:0]` | 3 | PA mode/control word |

### Outputs

| Signal | Description |
|---|---|
| `outp` | Positive RF output |
| `outn` | Negative RF output |

## Requirements

The design expects a working open-source analog/RF IC design environment with:

- xschem
- ngspice
- KLayout
- IHP SG13G2 PDK installed through open_pdks or an equivalent setup
- `PDK_ROOT` pointing to the installed PDK location

The provided `xschemrc` defaults to:

```text
PDK = ihp-sg13g2
```

If `PDK_ROOT` is not set, the setup attempts to locate an open_pdks installation in common system locations.

## Getting started

Clone the repository:

```bash
git clone https://github.com/p-fath/iruwbtx7.git
cd iruwbtx7
```

Set the PDK root if it is not already configured:

```bash
export PDK_ROOT=/path/to/your/pdk
export PDK=ihp-sg13g2
```

Open the top-level schematic:

```bash
cd xschem
xschem iruwbtx7.sch
```

Open the transient simulation testbench:

```bash
xschem iruwbtx7_tb.sch
```

## Simulation

The main testbench is:

```text
xschem/iruwbtx7_tb.sch
```

It includes:

- IHP MOS, HBT, resistor, and capacitor model libraries
- SG13G2 standard-cell spice include
- 1.5 V supply sources
- trigger pulse source
- configurable digital control sources
- bondwire/output matching approximation
- 50 Ω output load
- ngspice transient simulation command

The testbench transient command currently runs a short pulse simulation and saves the output waveforms to:

```text
iruwbtx7_tb.raw
```

Typical plotted signals include:

```text
trig
xiruwbtx7.VA2
xiruwbtx7.VB2
xiruwbtx7.en_PA
xiruwbtx7.rf_osci_p
xiruwbtx7.rf_osci_n
outp_load
outn_load
```

## Layout files

The `gds/` directory currently contains selected GDS layout files:

```text
gds/iruwbtx7_balun.gds
gds/iruwbtx7_tank_inductor.gds
```

These can be opened in KLayout for inspection:

```bash
klayout gds/iruwbtx7_balun.gds
klayout gds/iruwbtx7_tank_inductor.gds
```

## Notes

- The repository is a pre-release and may not yet contain a complete signoff-ready flow.
- The output network in the provided testbench includes bondwire and matching approximations.
- The schematic notes indicate that output ESD structure assumptions may affect how the output should be tied.
- Schematic, layout, and simulation consistency should be checked before reuse.
- DRC, LVS, parasitic extraction, EM/IR, and RF signoff are not claimed by this repository.

## License

This project is licensed under the Apache License 2.0. See [LICENSE](LICENSE) for details.

## Author

Patrick Fath

## Citation

If you use this design in academic or research work, please cite the repository:

```bibtex
@misc{fath_iruwbtx7,
  author       = {Patrick Fath},
  title        = {iruwbtx7: Open-source 7 GHz IR-UWB transmitter design},
  howpublished = {\url{https://github.com/p-fath/iruwbtx7}},
  year         = {2026}
}
```
