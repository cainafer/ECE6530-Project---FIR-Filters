# ECE6530 - Project-FIR-Filters

---

## Developers
Aaron Blanchard
Antonio Santos Aguilera
Caina Fernandes
Jason Porter

---

## Project Description

This project investigates a few application of FIR filters using MATLAB. FIR filters are frequency-selective filters utilized in a variety of digital signal processing applications in which linear-phase integrity is important.  Because FIR filters are computationally expensive compared to IIR filters, designing efficient filtering algorithms can be critical in applications with limited memory storage or a low tolerance for latency.  However, FIR filters are inherently stable systems and do not induce phase distortion into filtered signals.  Therefore, FIR filters are often used in data, audio, and image processing when data integrity is critical. This project investigates FIR filters commonly used in audio effect manipulation, image restoration, and image edge detection. 

### Application Topics

1) Echo Filter -- Audio Effects
2) Deconvolution Filter -- Image Restoration
3) Edge Detection -- Bar Code Scanner


---

## Delineation of FIR Filtering Techniques

### Echo: 

A linear-phase shift that generates a signal delay with a relative magnitude to the original signal.  This phenomenon produces echoes and reverberations in audio signals, as well as “ghosts” in images.

### Cascading Systems: 

The output of the first system is the input to the second system, and the overall output of the cascade system is taken to be the output of the second system. 


![FIR Diagram](https://user-images.githubusercontent.com/100549490/166173153-637e9b12-26b2-43a1-802d-3d5b7944050c.svg)

$$
\begin{align}
	w(n) &= x(n) - q(n-1) \tag{FIR Filter 1}\\
	y(n) &= \sum_{l=0}^{M}r^lw(n-1) \tag{FIR Filter 2}
\end{align}
$$

| FIR Filter 1 | Utilized to create echoes on signals and data sets.  This applies to audio and image data. |
| ------------ | ------------------------------------------------------------ |
| FIR Filter 2 | Utilized to undo the effect of Filter 1.  This is known as deconvolution used to restore signals. |

### Deconvolution:

A signal processing technique used to rectify an undesired convolution.  This is useful in image restoration.

### First-Difference Filter: 

$$
y(n) = x(n) - x(n-1) \tag{First-difference Filter}
$$

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

#### Lab 9 Code
Open "/B - Programs/Lab 9 - FIR Filtering/LabP9.m" in MATLAB.  
Run program using Editor>Run>Run.

#### Lab 10 Code
Open "/B - Programs/Lab 10 - Edge Detection/lab10.m" in MATLAB.  
Run program using Editor>Run>Run.

#### dconvdemo() GUI
Locate and unzip "/A - Project Resources/spfirst_v174.zip" to new folder.
In MATLAB, locate in the unzipped folder "/spfirst/dconvdemo" and type in the console "dconvdemo" to open the dconvdemo GUI. 
Follow the instructions in "/A - Project Resources/Lab 10 - Edge Detection.pdf" for proper use of the GUI.




---

## Directory Hierarchy

![Directory Hierarquy](https://user-images.githubusercontent.com/100549490/166179732-e161bd92-3cc5-41f7-bd38-b7301c325056.svg)

| DIRECTORY             | DESCRIPTION                                                  |
| --------------------- | ------------------------------------------------------------ |
| A - Project Resources | Contains resources used in project.  Primarily contains the Lab instructions. |
| B - Programs          | Contains the MATLAB programs separated into Lab 9 and Lab 10. <br />Lab 9: Audio echoes and image restoration <br />Lab 10: Edge detection and bar code scanning |
| C - Submittals        | Contains deliverables such as published code and a poster presentation |
| Z - Archive           | Contains archived files.                                     |

