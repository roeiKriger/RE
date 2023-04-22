# whoami
Author: InDeineMama

### Solution
* There is no README in the challenge, I get one exe file named “whoami_0x01”. 
* I will look at the strings of the executable, some interesting ones are: “RIGHT!”, “WRONG!”, “IsDebuggerPresent”.
IsDebuggerPresent is a check the file is probably doing to detect debuggers, if it is found usually the program will terminate itself to prevent further debugging.
* I opened the file with PeStudio, the file is a C++ program, 32 bit.
Moreover, it seems like the program could be malicious, based on VT results that we get:

![image](https://user-images.githubusercontent.com/66572300/233787591-a920ff7c-a5ba-4f02-aff7-a517a2dff627.png)

* I will run the file on a virtual machine and see what happens. A window is opened asking for password. 

![image](https://user-images.githubusercontent.com/66572300/233787598-28ea9f84-aecc-4560-b5b0-ae34df8b07ed.png)

* I’ll open the exe file in IDA. The code is now presented and I can watch the main function.
There from some short search, I notice that there is a offset “Dad” right before the check and before I get to an offset named: “aRight”.
Seems like a good candidate for a strcmp with the password the user enters.

![image](https://user-images.githubusercontent.com/66572300/233787615-c9e131f6-3dfa-4db4-bb90-393bcda7e500.png)

* Let’s check it.

![image](https://user-images.githubusercontent.com/66572300/233787627-09765ff1-e629-458f-aff0-be1984f17dd9.png)

Success!
