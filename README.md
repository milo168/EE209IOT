## ECE 209AS Winter 2020
Project maintained by Joseph Miller, Arelys Navarro, Michael Lo

## Abstract
**TODO:** IoT security has become increasingly important as many of these embedded devices capture sensitive data and may even do computation on the spot. Through indirect measurements, it is possible to retrieve sensitive data and its computed results. One such side-channel attack is to measure the power consumption during operation. Certain operations have different power signatures (floating point vs integer operations) and so it is possible to figure out what operation is being done.

## Tasks
- [x] 1/28 Deadline for website w/ detailed proposal, timeline, and reference paper
- [ ] Wk. 4 Chip Whisperer hands-on training and tutorials
- [ ] Wk.5-7 Recreate ‘Floating-Point Multiplication Timing Attack on Deep Neural Network’
- [ ] Wk. 7-10 Expand and further develop experiment
- [ ] Wk. 10 Create and practice final presentation. Finalize report (site)

## Tutorial Documentation
Items Used:
  * Picoscope 2204A
  * --Other HW here--
  
Installing Picoscope Drivers:
* Get drivers from [Pico Technology](https://www.picotech.com/downloads).
  * Install drivers for 2204A for Windows OS 64-bit: Picoscope (x.x.x)(6.14.10) and PicoSDK (x.x.x)(10.6.13)(64-bit).
* Install ChipWhisperer software from this [ChipWhisperer Github](https://github.com/newaetech/chipwhisperer/releases/download/v4.0.1/Chipwhisperer.v4.0.1.Setup.32-bit.exe).
  * As of current, ChipWhisperer latest version 5 does not have Picoscope support.
  * ChipWhisperer v4 uses Python 2 so we cannot simply copy the files to ChipWhisperer v5, since v5 uses Python 3.
  * Go to current installation and modify __init.py on line 362 <br />
    in our installation path: C:\Program Files (x86)\ChipWhisperer\WinPython-64bit-2.7.13.1Zero\python-2.7.13.amd64\Lib\ctypes\
    ```
    if handle is None:
      self._handle = _dlopen(self.name, mode)
    else:
    ```
    to
    ```
    if handle is None:
      self._handle = _dlopen(str(self.name), mode)
    else:
    ```
    

## Sources
1. [Reverse Engineering Neural Networks](https://www.usenix.org/conference/usenixsecurity19/presentation/batina)
2. [Differential Power Analysis](https://www.paulkocher.com/doc/DifferentialPowerAnalysis.pdf)
3. [Chip Whisper Tutorial](https://wiki.newae.com/Getting_Started)
