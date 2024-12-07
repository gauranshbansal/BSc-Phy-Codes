# Quantum Mechanics - Solving Schrodinger Equation

This repository contains solutions to several problems related to Quantum Mechanics, specifically solving the s-wave Schrodinger equation for different potentials. The code is written in **Scilab** and focuses on computing energy eigenvalues and plotting corresponding wavefunctions.

## Problems Addressed in the Code

### Problem 1: Ground State and First Excited State of the Hydrogen Atom

**Problem Statement:**

Solve the s-wave Schrodinger equation for the ground state and the first excited state of the hydrogen atom. The equation is as follows:

\[
\frac{d^2u(r)}{dr^2} = A(r) \left[ V(r) - E \right]
\]

Where \( V(r) = -\frac{e^2}{r} \), and \( A(r) = \frac{2m}{\hbar^2} \). Here, \(m\) is the reduced mass of the electron. The goal is to calculate the energy eigenvalues and plot the corresponding wavefunctions.

**Code Implementation:**

The code solves the above equation using finite difference methods and matrix diagonalization to compute the energy eigenvalues and wavefunctions for the ground and first excited states of the hydrogen atom.

Parameters:
- \( e = 3.795 \) (in eVÅ) 
- \( \hbar c = 1973 \) (in eVÅ)
- \( m = 0.511 \times 10^6 \) (in eV/c²)

### Problem 2: Radial Schrodinger Equation for an Atom

**Problem Statement:**

Solve the s-wave radial Schrodinger equation for an atom with a screened Coulomb potential \( V(r) = -\frac{e^2}{r} e^{-r/a} \). Find the energy of the ground state of the atom to an accuracy of three significant digits, and also plot the corresponding wavefunction.

**Code Implementation:**

The code computes the energy eigenvalues of an atom with the Coulomb potential and a screening factor. The potential is modified by the screening factor, and the code finds the ground state energy and plots the corresponding wavefunction.

Parameters:
- \( e = 3.795 \) (in eVÅ)
- \( m = 0.511 \times 10^6 \) (in eV/c²)
- \( a = 3, 5, 7 \) Å
- \( \hbar c = 1973 \) (in eVÅ)

### Problem 3: Anharmonic Oscillator

**Problem Statement:**

Solve the s-wave radial Schrodinger equation for a particle of mass \( m \) under an anharmonic oscillator potential of the form:

\[
V(r) = \frac{1}{2} k r^2 + \frac{1}{3} b r^3
\]

The goal is to find the ground state energy of the particle to an accuracy of three significant digits and to plot the corresponding wavefunction.

**Code Implementation:**

This code solves the Schrodinger equation for a particle in an anharmonic potential by discretizing the equation using a finite difference method. The resulting matrix is diagonalized to obtain the energy eigenvalues and corresponding wavefunctions.

Parameters:
- \( m = 940 \) MeV/c²
- \( k = 100 \) MeV/fm²
- \( b = 0, 10, 30 \) MeV/fm³
- \( \hbar c = 197.3 \) MeV·fm

### Problem 4: Vibrations of Hydrogen Molecule (Morse Potential)

**Problem Statement:**

Solve the s-wave radial Schrodinger equation for the vibrations of the hydrogen molecule, modeled by the Morse potential:

\[
V(r) = D \left( e^{-2\alpha (r-r_0)} - e^{-\alpha (r-r_0)} \right)
\]

Where \( \mu \) is the reduced mass of the two-atom system. The task is to find the lowest vibrational energy of the molecule to an accuracy of three significant digits and plot the corresponding wavefunction.

**Code Implementation:**

This code solves the radial Schrodinger equation for the Morse potential, which models the vibrations of a diatomic molecule. The wavefunction is computed and plotted for the lowest vibrational state, and the corresponding energy is displayed.

Parameters:
- \( m = 940 \times 10^6 \) eV/c²
- \( D = 0.755501 \) eV
- \( \alpha = 1.44 \)
- \( r_0 = 0.131349 \) Å
- \( \hbar c = 1973 \) eV·Å

## Code Breakdown and Methodology

### Code 1: Hydrogen Atom Ground and Excited States

The first code provided solves the s-wave Schrodinger equation for the hydrogen atom. It uses the following potential function:

\[
V(r) = -\frac{e^2}{r}
\]

This is a Coulomb potential that represents the interaction between the electron and the proton in a hydrogen atom. The key steps in the code are:

1. **Parameter Setup:** The values of \( e \), \( \hbar c \), and \( m \) are initialized.
2. **Finite Difference Discretization:** A grid of \( r \)-values is created, and the Schrodinger equation is discretized on this grid.
3. **Matrix Representation:** The Hamiltonian matrix is formed, which consists of both kinetic and potential energy matrices.
4. **Diagonalization:** The eigenvalue problem is solved using matrix diagonalization to obtain the energy eigenvalues and the corresponding wavefunctions.

The results of this computation are displayed by plotting the wavefunctions of the first few states (ground state and excited states) as a function of radial distance.

### Code 2: Coulomb Potential with Screening

This code addresses a more complex problem where the Coulomb potential is screened. The potential used is:

\[
V(r) = -\frac{e^2}{r} e^{-r/a}
\]

Where \( a \) is a screening length. The goal is to calculate the energy eigenvalues for different values of \( a \) and plot the corresponding wavefunctions.

**Main steps in the code:**

1. **Initialization of Parameters:** Here, \( a \) is varied over different values (3, 5, and 7 Å), and the grid points for \( r \) are set.
2. **Matrix Construction:** The Hamiltonian is built using the same principles as the previous code, but the potential is modified with the screening term.
3. **Diagonalization:** The matrix is diagonalized to find the energy eigenvalues and the wavefunctions.
4. **Plotting:** The wavefunctions corresponding to the energy eigenvalues are plotted for different screening lengths.

### Code 3: Anharmonic Oscillator

The third code solves for the energy eigenvalues and wavefunctions of a particle under an anharmonic oscillator potential:

\[
V(r) = \frac{1}{2} k r^2 + \frac{1}{3} b r^3
\]

This potential is often used to model systems where the restoring force is not purely quadratic. The steps in the code are:

1. **Parameter Initialization:** The mass \( m \), spring constant \( k \), and anharmonic parameter \( b \) are defined.
2. **Matrix Setup:** The Hamiltonian matrix is created using finite differences to approximate the second derivative of the wavefunction.
3. **Diagonalization:** The matrix is diagonalized to obtain the energy eigenvalues.
4. **Plotting:** The wavefunctions corresponding to the energy eigenvalues are plotted.

The resulting plots show the behavior of the wavefunctions for different values of the anharmonic parameter \( b \).

### Code 4: Vibrations of Hydrogen Molecule (Morse Potential)

This code addresses the vibrations of a hydrogen molecule using the Morse potential. The Morse potential is given by:

\[
V(r) = D \left( e^{-2\alpha (r-r_0)} - e^{-\alpha (r-r_0)} \right)
\]

Where \( D \) is the well depth and \( \alpha \) is a parameter related to the width of the potential well. The main steps in the code are:

1. **Parameter Setup:** The values of \( D \), \( \alpha \), and \( r_0 \) are initialized.
2. **Matrix Construction:** A Hamiltonian matrix is built using the Morse potential.
3. **Diagonalization:** The Hamiltonian matrix is diagonalized to find the energy eigenvalues.
4. **Plotting:** The wavefunction corresponding to the ground vibrational state is plotted.

This code calculates and plots the wavefunction for the hydrogen molecule's vibrational modes.

---

### Notes on Additional Codes

The codes that were not directly answers to the above problems also solve for energy eigenvalues using similar numerical techniques:

- **Finite Difference Method:** For each of the problems, the Schrodinger equation is discretized using the finite difference method.
- **Matrix Diagonalization:** Once the Hamiltonian is constructed, it is diagonalized to obtain the energy eigenvalues and wavefunctions.
- **Visualization:** The wavefunctions are plotted for better visualization of their spatial distributions.

These methods are applicable for a wide range of problems in quantum mechanics and can be extended to other systems beyond the ones provided here.

---
