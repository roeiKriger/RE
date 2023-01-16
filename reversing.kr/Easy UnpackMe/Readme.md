# Easy UnpackMe.exe

The Readme of the challenge has the next instructions:
> Find the OEP 

### My steps to solve the problem:
* I opened PEiD, in PEiD it seems like the file is 32 bit, there isn’t any packer which was found here.
* When opening the file in IDA, we can see that there aren’t enough libraries and functions, seems like many are missing, this indicates me that it is packed.
* I opened the file in Ollydbg.exe, and got a message which suggest the file is packed.
* From scrolling a bit in the code, I reached to a suspicious section of code instructions:

![This is an image](https://github.com/roeiKriger/RE/blob/main/reversing.kr/Easy%20UnpackMe/JMP.png)

A JMP and then many lines which indicates that there is a problem to get the next set of instructions.
* The OEP is 00401150
