# 3-Bit Synchronous Counter Using T Flip-Flops (Verilog)

This project implements a **3-bit synchronous up-counter** using **T flip-flops** in **Verilog HDL**, along with a **testbench** for simulation and verification.

---

## 📌 Project Overview

- Designed using **structural modeling**
- Uses **T flip-flops** with **active-HIGH synchronous reset**
- All flip-flops are clocked by the **same clock**
- Verified using a Verilog **testbench**

---

## 🧠 Design Description

### 🔹 T Flip-Flop
- Toggles output when `t = 1`
- Holds state when `t = 0`
- Resets output to `0` when `rst = 1`
- Synchronous reset (checked on clock edge)

### 🔹 Counter Logic
| Flip-Flop | Toggle Condition |
|----------|------------------|
| Q0 | `t` |
| Q1 | `Q0` |
| Q2 | `Q0 & Q1` |

This produces a **3-bit synchronous up-counter**.

---

## 🔢 Count Sequence

When `t = 1`:

