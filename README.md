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

- `Extended_DLX_instructions.xml` – XML file containing all instructions including the newly added ones (`MUL`, `MAC`, `ReLU`).  
  This file can be used with **RESA** or other assembly compilers to assemble programs for the extended processor.
- `Extended_DLX.bit` – final bitstream file of the extended processor, ready to be loaded onto an FPGA.

---

## Usage

1. **Simulation:** Use the files in `Extended_DLX` and `Assembly codes for test` to simulate the processor and run test programs.
2. **Synthesis:** Open the Vivado project in `Extended_DLX` to synthesize and implement the extended processor on FPGA.
3. **Running on FPGA:** Load the `Extended_DLX.bit` file to the FPGA to test programs in real hardware.
4. **Assembly Programming:** Use `Extended_DLX_instructions.xml` with your assembler to write and compile programs that utilize the new instructions.

---

## User Guide – Running on FPGA with RESA

To run the extended DLX processor on FPGA using **RESA**, follow these steps:

1. **Open RESA from the desktop.**  
<img width="138" height="144" alt="image" src="https://github.com/user-attachments/assets/aec92d62-be7c-4d79-b32f-3cda210301d6" />

2. **Open the Hardware Monitor and configure the DLX machine:** 
   - Select **Hardware Monitor**. 
<img width="494" height="231" alt="image" src="https://github.com/user-attachments/assets/e7231626-803a-4ae2-a435-2f18ee937577" />

   - Select **A Load/Store Machine + A simplified DLX**.
<img width="877" height="678" alt="image" src="https://github.com/user-attachments/assets/9804a699-a743-45a6-b3f9-ea47479e6f39" />
  
3. **Load required files:**  
   - **Labels file:** Load `labels.lbl` (located in the `Additional` folder).
<img width="864" height="664" alt="image" src="https://github.com/user-attachments/assets/f6a9d406-7ddd-4cb5-bdc9-6167a04a56e8" />
  
   - **Bitstream file:** Load the `.bit` file (also in the `Additional` folder), which contains the full design of the extended proccessor.
<img width="870" height="659" alt="image" src="https://github.com/user-attachments/assets/b15e698d-cd84-44ef-a45f-4644fef5fd8f" />

4. **Compile the assembly code:**  
   - Open RESA and choose the **Compiler**. 
<img width="492" height="225" alt="image" src="https://github.com/user-attachments/assets/ad3201a7-806a-4df1-8f28-6596172c7825" />
 
   - Paste your assembly program into the editor.  
   - Click **Compile** to generate a `.cod` file.
<img width="873" height="467" alt="image" src="https://github.com/user-attachments/assets/e78f6c30-e025-418f-8dce-0face66dbd36" />
  
5. **Upload and run the program:**  
   - Load the generated `.cod` file (output of the compiler) into RESA.  
   <img width="872" height="667" alt="image" src="https://github.com/user-attachments/assets/14774560-23c6-4c78-9e9e-eadc2382045f" />  

   - Run the program using one of two modes:  
     - **Step mode:** Execute instructions one by one.  
     - **Continuous mode:** Run the program until the last instruction (`halt`).  
   <img width="892" height="452" alt="image" src="https://github.com/user-attachments/assets/6a7dad58-1de3-474b-96db-4507a4a8be88" />  

✅ **The results can be observed in the Register values and the Memory dump within RESA.**

---

## Notes

- The repository focuses on **accelerating inference operations** for neural networks using hardware extensions.  
- For larger neural networks or additional functionality (e.g., convolution support, vectorized operations), further hardware modifications would be required.  
- Ensure that your test environment supports the **full instruction set**, including the new instructions.
