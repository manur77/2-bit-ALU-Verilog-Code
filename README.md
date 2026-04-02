# 🔧 2-bit ALU Design using Verilog (EDA Playground)

## 📌 Project Description
This project implements a 2-bit Arithmetic Logic Unit (ALU) using Verilog HDL and verifies its functionality using a testbench on EDA Playground.

The ALU performs both arithmetic and logical operations based on a 4-bit control signal (op).

---

## ⚙️ Features
- 2-bit input operands (a, b)
- 4-bit output (alu) to handle multiplication results
- Enable signal (en)
- Multiple operations using case statement
- Fully simulated using testbench

---

## 🧮 Operations Supported

Opcode   Operation
0001     Addition (a + b)
0010     Subtraction (a - b)
0011     NOT (~a)
0100     Multiplication
0101     AND
0110     OR
0111     NAND
1000     XOR

---

## 🧪 Simulation Setup

Platform: EDA Playground  
Language: Verilog  
Simulator: Icarus Verilog  
Waveform Viewer: EPWave  

---

## ▶️ How to Run

1. Go to https://www.edaplayground.com/
2. Select:
   - Language → Verilog  
   - Simulator → Icarus Verilog  
3. Paste the ALU design and testbench code  
4. Enable "Open EPWave after run"  
5. Click Run  

---

## 📊 Output

- Console output using $monitor  
- Waveform output (.vcd) in EPWave  

---

## 📂 Project Files

alu2.v        → ALU Design Module  
alu2_tb.v     → Testbench  
README.md     → Documentation  

---

## 🎯 Learning Outcomes

- Understanding of ALU design concepts  
- Behavioral modeling in Verilog  
- Writing testbenches  
- Simulation using EDA Playground  

---

## 🚀 Future Scope

- Add flags (Carry, Zero, Overflow)  
- Extend to 16-bit and 32-bit ALU  
- Use SystemVerilog for advanced verification  

---

## 👨‍💻 Author

Manu R  
Final Year ECE Student  

---

## ⭐ Support

If you found this project useful, please give it a star on GitHub!
