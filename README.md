# Carry Look-Ahead Adder (CLA) in Verilog

This project implements a **16-bit Carry Look-Ahead (CLA) Adder** in Verilog along with a testbench.  
The CLA adder improves addition speed by reducing carry propagation delay compared to the Ripple Carry Adder.

---

## 📂 Project Structure
├── cla_adder.v # Verilog code for the CLA Adder
├── cla_adder_tb.v # Testbench for CLA Adder
└── README.md # Documentation

## 🖥️ Simulation Instructions

### Using **Icarus Verilog (iverilog + gtkwave)**
1. Compile the design and testbench:
   ```bash
   iverilog -o cla_adder.out cla_adder.v cla_adder_tb.v

2. Run the simulation:

    vvp cla_adder.out
3.Open the waveform (.vcd) file in GTKWave:
   gtkwave cla_adder.vcd

Sample Console Output:
<img width="671" height="276" alt="image" src="https://github.com/user-attachments/assets/fd04d639-3bdc-4f38-b69b-7e80e970f65f" />

