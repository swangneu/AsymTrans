# AsymTrans

Extending DAB to multi-port DAB: effective design of integrated multi-winding transformers for decoupled power flow, and case validation of TAB converter.
![AysmTrans](images/asymtrans.png)

## Repository Structure

| File / Folder     | Description                                |
| ----------------- | ------------------------------------------ |
| `asymtrans.FEM`   | Main FEM file, can be directly opened in FEMM software.                            |
| `fem_results/`    | FEM results folder for three measurements. |
| `ecm_para.m`           | MATLAB script to compute the parameters in the extended cantilever model.          |
| `tab.slx`         | Simulink validation of Triple-Active-Bridge Converter.                             |

## Related Link

[FEMM](https://www.femm.info/wiki/HomePage)

[Extended Cantilever Model](https://ieeexplore.ieee.org/document/9003574)

[Decoupled MAB](https://ieeexplore.ieee.org/document/9130931)