# ASA-weighted Vertical Derivative (AVD)

This repository contains GNU Octave / MATLAB-compatible scripts used to generate synthetic magnetic models and compute enhancement attributes for magnetic data interpretation.

The implementation includes the ASA-weighted Vertical Derivative (AVD).

---

## Description

The ASA-weighted Vertical Derivative (AVD) is a dimensionless magnetic enhancement attribute defined as the ratio between the vertical derivative (GZ) and the analytic signal amplitude (ASA).

This repository provides implementations of the following methods:

- **GZ** – Vertical derivative  
- **ASA** – Analytic Signal Amplitude  
- **AVD** – ASA-weighted Vertical Derivative  

Synthetic magnetic models are provided for:

- Compact body
- Dike
- Magnetic contact  


---

## Repository Structure

```
scripts/
compute_AVD.m
compute_all_attributes.m

synthetic_models.m
quick_test.m

---

## Requirements

- GNU Octave (version 6.0 or later)  
  or  
- MATLAB-compatible environment  

No additional toolboxes are required.

---

## How to Run

1. Open GNU Octave or MATLAB  
2. Navigate to the repository folder  
3. Run:

```octave
quick_test

```

This script will:

Generate synthetic magnetic data
Compute GZ, ASA, AVD, and IAVD
Display the results.

**Reproducibility**

All synthetic models and attribute computations used in the study can be reproduced using the scripts provided in this repository.

**Author**

Rafael Lima Dessart

**License**

This code is provided for academic and research purposes. Users are free to use, modify, and distribute the scripts, provided that proper citation of the associated publication is given.associated publication is given.
