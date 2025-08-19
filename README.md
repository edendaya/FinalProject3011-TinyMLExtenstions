# Tiny Machine Learning Extensions - Final Project 3011

This repository contains the files and resources for the **Extended DLX processor project**, which implements hardware extensions to accelerate inference for neural networks. The repository is structured into three main folders:

---

## 1. `Extended_DLX`

Contains all the files generated in **Xilinx** for the extended DLX processor, including:

- RTL code (`.v`) for the hardware extensions (MUL, MAC, ReLU)
- Simulation files
- Constraints and project setup files for Vivado

This folder allows you to **synthesize and implement the extended processor on an FPGA**.

---

## 2. `Assembly codes for test`

Contains assembly programs to **test and compare** the baseline DLX processor with the extended DLX processor. This folder is divided into two subfolders:

### a) `operations_only`

- Tests for individual operations: `MUL`, `MAC`, and `ReLU`.
- Used to verify the correctness of each new instruction on the extended processor.
- Programs can be run on both the **baseline** and **extended DLX** to compare execution results.

### b) `inference_stage_different_sizes`

- Programs to run the **inference stage of a neural network**.
- Supports three matrix sizes: `2×2`, `4×4`, and `16×16` multiplied by corresponding vectors.
- Used to compare **execution time and results** between the baseline and extended processors.

---

## 3. `Additional`

Contains extra files required to fully utilize and compile the project:

- `commands.xml` – XML file containing all instructions including the newly added ones (`MUL`, `MAC`, `ReLU`).  
  This file can be used with **RESA** or other assembly compilers to assemble programs for the extended processor.
- `Extended_DLX.bit` – final bitstream file of the extended processor, ready to be loaded onto an FPGA.

---

## Usage

1. **Simulation:** Use the files in `Extended_DLX` and `Assembly codes for test` to simulate the processor and run test programs.
2. **Synthesis:** Open the Vivado project in `Extended_DLX` to synthesize and implement the extended processor on FPGA.
3. **Running on FPGA:** Load the `Extended_DLX.bit` file to the FPGA to test programs in real hardware.
4. **Assembly Programming:** Use `Extended_DLX_instructions.xml` with your assembler to write and compile programs that utilize the new instructions.

---

## Notes

- The repository focuses on **accelerating inference operations** for neural networks using hardware extensions.  
- For larger neural networks or additional functionality (e.g., convolution support, vectorized operations), further hardware modifications would be required.  
- Ensure that your test environment supports the **full instruction set**, including the new instructions.
