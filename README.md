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

Although we ended up not using the Picoscope, below is a tutorial we find useful for those who will use it in the future. Chipwhisperer is currently overhauling their API, so most of the documentations are fragmented for picoscope support. Below are the steps to get picoscope working with chipwhisperer API.

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
4. [Binarized Neural Networks](https://arxiv.org/pdf/1602.02830.pdf)
5. [Pop Count](https://software.intel.com/en-us/articles/binary-neural-networks)

**Understanding Power Analysis and Chip Whisperer Software:**
We began with the basic setup of the Chip Whisperer Jupyter Notebook. This Notebook is a collection of scripts and informative documents to support a beginning user. Our group followed the Suggested Completion Order document to get an introduction in how to use ChipWhisperer API along with the ChipWhispererNano. 

We completed the first eight tutorials over the course of a few days to familiarize ourselves with the equipment and API. These tutorials helped us understand poweranalysis, capturing data, viewing data, and analyizing our data. We learned how we can find patterns in the waveforms produced from power traces to identify changes in the behavior of the processor. Every waveform is different for different functions in a line of code. In addition to getting this general knowledge, the tutorials taught us how to implement our own attacks on any code. We learned how to modify and upload the firmware to our needs. Within the firmware, we included the running code so that our traces captured the processor's behavior as it ran. We also learned to tailor our output graphs and sampling numbers to get a better view of the waveforms we were focused on. 

## Understanding Floating Point Multiplication
Before delving into the inner workings of neural networks and trying to find waveforms, we broke up the components of a neural network and focused on one of the essential calculations, multiplication. Our goal in this step is to find the differeneces in waveforms for floating point multiplication of zeros and non-zero values. By identifying these stand alone operations we can further identify these forms in the power analysis of a neural network. 

When doing floating point multiplication, there are distinct waveforms for non-zero and zero values. As seen in the image below, the section marked 0 shows a floating multiply with a zero value, while the rest of the sections (1-4) are done with non-zero values. The time it takes to do a floating zero multiply is 120 unit time compared to the non-zero ones which are roughly 160 time units.

![waveform multiply](/images/loop04marked.png)

When doing floating point addition, we found that there was also a difference between zero and non-zero values.

**Firmware Updates:**

## Identifying Patterns in a the Convolutional Neural Network
Knowing that floating point multiply has different waveforms for non-zero and zero values, we used a convolutional neural network used in identifying digits in the MNIST dataset. Our attack focused on the first layer of the neural network as it is the layer where the inputs can be easily retrieved. The input to the convolutional neural network is a 28x28 image in which the intensity is binary, either dark or bright (0 or 1). Below is a successful demonstration of the first 5 pixels retrieved from the input image. The input pixels were {0,0,1,0,1,1}.

![waveform guess](/images/001011marked.png)

We can see in between the marked sections, a Y shaped pattern. On the left half of the Y is the multiply, then on the right half is the accumulate. When doing floatin point multiply on non-zero values, it is longer than compared to multiply with zero values. We also see that the time to do floating point addition is also different depending on input.

## Expanding our Project
We wanted to see if it was possibe to attack binarized neural networks. Binarized neural networks used binarized weights which removes the need to use floating point hardware. Instead, bitwise operations can be performed, making binarized neural networks fast and storage efficient. We have identified one of the important function for binary neural networks. This function is called popcount. Popcount works by doing an XNOR on two inputs then it counts the number of one bits.

## Identifying Addition
Addition:
Addition with Array Accessing:
## Integer Attack
Direct Addition
Using Arrays
Memory Access
Assemby File

## Floating Points Attack
We were unable to succesfully identify the binarized weights when using integer addition. To relax this restriction, we have assumed that the addition used floating point addition for the one bits counter. From there we were able to see patterns of 0's and 1's in the weights. However, to truly recover the weight, two input strings were needed: one with all 0's and one with all 1's. By using these two patterns, we are able to tell whether it was the weight that contained a 0 or whether it was the input. This is needed since XNOR of (0,1) and (1,0) both result in 0, making it indistinguishable of which had what bit.

Determining Weights
