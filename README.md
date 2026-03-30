# ASA-weighted Vertical Derivative (AVD) and IAVD

This repository contains GNU Octave / MATLAB-compatible scripts used to generate synthetic magnetic models and compute enhancement attributes for magnetic data interpretation.

The implementation includes the ASA-weighted Vertical Derivative (AVD) and its extension, the Inclination of the ASA-weighted Vertical Derivative (IAVD).

---

## Description

Magnetic data interpretation often relies on derivative-based attributes to enhance geological structures. However, conventional methods may suffer from instability, noise amplification, or poor edge definition.

This repository provides implementations of the following methods:

- **GZ** – Vertical derivative  
- **ASA** – Analytic Signal Amplitude  
- **AVD** – ASA-weighted Vertical Derivative  
- **IAVD** – Inclination of the ASA-weighted Vertical Derivative  

Synthetic magnetic models are generated for simple geological scenarios, including:

- Buried body  
- Vertical dike  
- Vertical contact  

These models are used to evaluate the behavior and stability of each method.

---

## Repository Structure


```
scripts/
  compute_AVD.m
  compute_IAVD.m
  compute_all_attributes.m

synthetic_models.m
quick_test.m
```


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

- Generate synthetic magnetic data  
- Compute GZ, ASA, AVD, and IAVD  
- Display the results.


## Reproducibility

All synthetic models and attribute computations used in the study can be reproduced using the scripts provided in this repository.


## Author

Rafael Lima Dessart


## License

This code is provided for academic and research purposes. Users are free to use, modify, and distribute the scripts, provided that proper citation of the associated publication is given.
