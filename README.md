# ASA-weighted Vertical Derivative (AVD)

This repository contains GNU Octave / MATLAB-compatible scripts used to generate synthetic magnetic models and compute magnetic enhancement attributes for data interpretation.

The implementation includes the ASA-weighted Vertical Derivative (AVD).

---

## Description

The ASA-weighted Vertical Derivative (AVD) is a dimensionless magnetic enhancement attribute defined as the ratio between the vertical derivative (GZ) and the analytic signal amplitude (ASA).

This repository provides implementations of:

- **GZ** – Vertical derivative
- **ASA** – Analytic Signal Amplitude
- **AVD** – ASA-weighted Vertical Derivative

Synthetic magnetic models are provided for:

- Compact body
- Dike
- Magnetic contact

---

## Repository Structure

```text
avd-framework/
├── README.md
├── attributes_asa_avd/
│   └── compute_all_attributes.m
├── quick_test.m
└── synthetic_models.m
```

---

## Requirements
GNU Octave (version 6.0 or later)
or MATLAB-compatible environment

No additional toolboxes are required.

---

## How to Run
Open GNU Octave or MATLAB.
Navigate to the repository folder.
Run:
```octave
quick_test
```

The script will:

Generate a synthetic magnetic model.
Add a controlled level of white noise.
Compute GZ, ASA, and AVD.
Display the resulting attributes.

---

## Reproducibility

The repository provides the synthetic model generation and attribute computation routines used in the study.

The scripts can be used to reproduce the computational procedures described in the paper.

---

## Author

Rafael Lima Dessart

---

## License

This code is provided for academic and research purposes. Users are free to use, modify, and distribute the scripts, provided that proper citation of the associated publication is given.
