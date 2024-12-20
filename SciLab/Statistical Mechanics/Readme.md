# Scientific Simulations in Scilab

This repository contains a collection of Scilab scripts for simulating and visualizing key physical phenomena. Each script focuses on a specific concept in physics, providing insights into probability, molecular motion, electromagnetic radiation, and specific heat laws. These simulations are accompanied by detailed plots for intuitive understanding.

## Table of Contents

1. [Probability of Microstates](#1-probability-of-microstates)
2. [Maxwell-Boltzmann Distribution](#2-maxwell-boltzmann-distribution)
3. [Radiation Laws: Planck, Rayleigh-Jeans, and Wien](#3-radiation-laws-planck-rayleigh-jeans-and-wien)
4. [Specific Heat Laws: Dulong-Petit, Einstein, and Debye](#4-specific-heat-laws-dulong-petit-einstein-and-debye)
5. [Dependencies](#dependencies)

---

## 1. Probability of Microstates

This program computes the probability distribution of microstates when coins are tossed. It calculates:

- The number of possible outcomes.
- The probability of obtaining a specific number of heads.

**Features:**
- Accepts user input for the number of observations and coins.
- Visualizes the probability distribution of heads.

**Key Concepts:**
- Binomial distribution.
- Probability theory.

**Output:**  
A subplot showcasing the probability distribution for different coin toss scenarios.

---

## 2. Maxwell-Boltzmann Distribution

Simulates the Maxwell-Boltzmann speed distribution of gas molecules at different temperatures.  

**Features:**
- Plots the speed distribution for various temperatures.
- Highlights key speeds: most probable, average, and root mean square (RMS).
- Customizable gas type and molar mass.

**Key Concepts:**
- Statistical mechanics.
- Molecular motion.

**Output:**  
Two plots:
1. Speed distribution for different temperatures.
2. Speed distribution at a specific temperature with key points marked.

---

## 3. Radiation Laws: Planck, Rayleigh-Jeans, and Wien

This script compares Planck’s law, Rayleigh-Jeans law, and Wien’s approximation for blackbody radiation.  

**Features:**
- Computes energy density as a function of wavelength for different temperatures.
- Visualizes the breakdown of classical laws and the success of Planck's law.

**Key Concepts:**
- Blackbody radiation.
- Ultraviolet catastrophe.
- Quantum mechanics.

**Output:**  
Four subplots:
1. Planck’s law at varying temperatures.
2. Rayleigh-Jeans law.
3. Wien’s approximation.
4. Comparative analysis of all three laws.

---

## 4. Specific Heat Laws: Dulong-Petit, Einstein, and Debye

Analyzes the variation of specific heat capacity (\(C_v\)) with temperature for different models:  
1. **Dulong-Petit Law**: Classical approximation.  
2. **Einstein Law**: Incorporates quantized energy levels.  
3. **Debye Law**: Accounts for phonon modes.

**Features:**
- Plots \(C_v\) vs. temperature for each model.
- Customizable Einstein temperature and temperature range.

**Key Concepts:**
- Specific heat capacity.
- Quantum harmonic oscillators.
- Low-temperature physics.

**Output:**  
Plots showing \(C_v\) as a function of temperature for different models.

---

## 5. Dependencies

Ensure Scilab is installed on your system. These scripts use core Scilab functionality and require the following:

- The Scilab `plot` and visualization functions.
- Knowledge of Scilab syntax for making minor adjustments if needed.

---

### Acknowledgments

Authored by **Gauransh (21hph2625)** as part of Statistical Mechanics Lab Work.

---

### License

This project is licensed under the MIT License. See the `LICENSE` file for details.
