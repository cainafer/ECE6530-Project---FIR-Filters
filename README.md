# ECE6530 - Project-FIR-Filters

---

## Developers
Aaron Blanchard
Antonio Santos Aguilera
Caina Fernandes
Jason Porter

---

## Project Description

This project investigates a few application of FIR filters using MATLAB 

### Application of FIR Filters 

#### 1) Echo Filter - Audio Effects

#### 2) Deconvolution Filter - Image Restoration

#### 3) Edge Detection - Bar Code Scanner

---

## Introduction

FIR filters are frequency-selective filters utilized in a variety of digital signal processing applications in which linear-phase integrity is important.  Because FIR filters are computationally expensive compared to IIR filters, designing efficient filtering algorithms can be critical in applications with limited memory storage or a low tolerance for latency.  However, FIR filters are inherently stable systems and do not induce phase distortion into filtered signals.  Therefore, FIR filters are often used in data, audio, and image processing when data integrity is critical. This project investigates FIR filters commonly used in audio effect manipulation, image restoration, and image edge detection. 

---

## Methods

The following FIR filtering techniques were implemented in this research:

#### Echo: 

A linear-phase shift that generates a signal delay with a relative magnitude to the original signal.  This phenomenon produces echoes and reverberations in audio signals, as well as “ghosts” in images.

#### Cascading Systems: 

The output of the first system is the input to the second system, and the overall output of the cascade system is taken to be the output of the second system. 


![Cascading System Diagram](https://user-images.githubusercontent.com/100549490/166158792-28f37636-1f4e-4f0e-8f4d-c224d3067694.png)

<img src="https://latex.codecogs.com/svg.image?\mathbf{{\color{white}w[n]=x[n]-q[n-1](FIR-Filter1)&space;}}" title="https://latex.codecogs.com/svg.image?\mathbf{{\color{white}w[n]=x[n]-q[n-1](FIR-Filter1) }}" /> 

<img src="https://latex.codecogs.com/svg.image?\mathbf{{\color{white}y[n]&space;=&space;\sum_{l=0}^{M}r^{l}w[n-l](FIR-Filter&space;2)}}&space;" title="https://latex.codecogs.com/svg.image?\mathbf{{\color{white}y[n] = \sum_{l=0}^{M}r^{l}w[n-l](FIR-Filter 2)}} " />


FIR Filter 1: utilized to create echoes on signals and data sets (audio, and image data).
### 
FIR Filter 2: utilized to (approximately) undo the effect of FIR-Filter 1 . This type of application is called Deconvolution.

#### Deconvolution:

A signal processing technique used to rectify an undesired convolution.  This is useful in image restoration.

#### First-Difference Filter: 

<img src="https://latex.codecogs.com/svg.image?\mathbf{{\color{white}y[n]=x[n]-x[n-1]&space;}}" title="https://latex.codecogs.com/svg.image?\mathbf{{\color{white}y[n]=x[n]-x[n-1] }}" />

A filter designed for detecting significant fluctuations in a signal.  This concept is known as edge detection and can be used in many image processing applications including bar code scanning.

---
## How to Install and Run

### Minimum System Requirements *

- Windows 10 (v1709) or Windows 7 (SP1)
- Any Intel or AMD x86-64 processor
- 4 GB Ram (8 GB recommended)
- 5-8 GB of HDD for MATLAB installation

*Based on MATLAB R2020a system requirements. Newer versions may have different requirements.

### Software

- MathWorks MATLAB R2020a or newer

### Run Programs

---

## Directory Hierarchy
