## ECE 209AS Winter 2020
Project maintained by Joseph Miller, Arelys Navarro, Michael Lo

## Abstract
IoT security has become increasingly important as many of these embedded devices capture sensitive data and may even do computation on the spot. Through indirect measurements, it is possible to retrieve sensitive data and its computed results. One such side-channel attack is to measure the power consumption during operation. Certain operations have different power signatures (i.e. floating point vs integer operations) and so it is possible to figure out what operation is being done. In this project, we apply power analysis side channel attacks to successfully identify the original image of a Convolutional Neural Network (CNN).

## Tasks
- [x] 1/28 Deadline for website with detailed proposal, timeline, and reference paper
- [x] Wk. 4 Chip Whisperer hands-on training and tutorials
  - [x] Getting the Picoscope to work with ChipWhisperer software
- [x] Wk.5-7 Recreate ‘Floating-Point Multiplication Timing Attack on Deep Neural Network’
  - [x] Wk. 5 Identify patterns in floating multiplication
  - [x] Wk. 6 Implement pattern knowledge on Neural Network
- DELAY Wk. 7-9 Group focused on Assignment #1
- [x] Wk. 9 Plan steps for further expansion of project
- [x] Wk. 10 Implement Binary Netral Network Classification by expanding on work previously done
- [x] Wk. 10 Create and practice final presentation. Finalize report (site)

## Tutorial Documentation
Items Used:
  * Picoscope 2204A
  * Raspberry Pi Zero
  * Chipwhisperer Nano
  
Installing Picoscope Drivers:
* Get drivers from [Pico Technology](https://www.picotech.com/downloads).
  * As of current, install drivers for 2204A for Windows OS 64-bit: Picoscope (6.14.10) and PicoSDK 64-bit (10.6.13).
* Install ChipWhisperer software from this [ChipWhisperer Github](https://github.com/newaetech/chipwhisperer/releases/download/v4.0.1/Chipwhisperer.v4.0.1.Setup.32-bit.exe).
  * As of current, ChipWhisperer latest version 5 does not have Picoscope support, so we will be using version 4.
  * ChipWhisperer v4 uses Python 2 so we cannot simply copy the files to ChipWhisperer v5, since v5 uses Python 3.
  * Go to current installation and modify __init.py on line 362 <br />
    For example, in our installation path: C:\Program Files (x86)\ChipWhisperer\WinPython-64bit-2.7.13.1Zero\python-2.7.13.amd64\Lib\ctypes\
    ```python
    if handle is None:
      self._handle = _dlopen(self.name, mode)
    else:
    ```
    to
    ```python
    if handle is None:
      self._handle = _dlopen(str(self.name), mode)
    else:
    ```
    

## Sources
1. [Reverse Engineering Neural Networks](https://www.usenix.org/conference/usenixsecurity19/presentation/batina)
2. [Differential Power Analysis](https://www.paulkocher.com/doc/DifferentialPowerAnalysis.pdf)
3. [Chip Whisper Tutorial](https://wiki.newae.com/Getting_Started)

**Understanding Power Analysis and Chip Whisperer Software:**
We began with the basic setup of the Chip Whisperer Jupyter Notebook. This Notebook is a collection of scripts and informative documents to support a beginning user. Our group followed the Suggested Completion Order document to get an introduction in how to use ChipWhisperer API along with the ChipWhispererNano. 

We completed the first eight tutorials over the course of a few days to familiarize ourselves with the equipment and API. These tutorials helped us understand poweranalysis, capturing data, viewing data, and analyizing our data. We learned how we can find patterns in the waveforms produced from power traces to identify changes in the behavior of the processor. Every waveform is different for different functions in a line of code. In addition to getting this general knowledge, the tutorials taught us how to implement our own attacks on any code. We learned how to modify and upload the firmware to our needs. Within the firmware, we included the running code so that our traces captured the processor's behavior as it ran. We also learned to tailor our output graphs and sampling numbers to get a better view of the waveforms we were focused on. 

## Understanding Floating Point Multiplication
Before delving into the inner workings of neural networks and trying to find waveforms, we broke up the components of a neural network and focused on one of the essential calculations, multiplication. Our chosen convultional neural network will only be working with binary, as we assumed a strictly black and white image was the input. Our goal in this step is to find the differeneces in waveforms for floating point multiplication of zeros, ones, and zero and one. By identifying these stand alone operations we can further identify these forms in the power analysis of a neural network. 

When doing floating multiplication, there are distinct waveforms for non-zero and zero values. As seen in the image below, the section marked 0 shows a floating multiply with a zero value, while the rest of the sections (1-4) are done with non-zero values. The time it takes to do a floating zero multiply is 120 unit time compared to the non-zero ones which are roughly 160 time units.

![waveform multiply](/images/loop\ 0-4\ marked.png)
**Firmware Updates:**

## Identifying Patterns in a the Convolutional Neural Network

## Expanding our Project
## Identifying Addition
Addition:
Addition with Array Accessing:
## Implementing Binary Neural Network Classification
## Integer Attack
Direct Addition
Using Arrays
Memory Access
Assemby File
## Floating Points Attack
Assumptions: popcount is float type
Determining Weights
