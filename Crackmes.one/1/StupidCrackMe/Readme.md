# CrackMe #2 - register me in your name
Author: crackinglessons.com

### Solution
* There is no README in the challenge, I get one exe file named “CrackMe2”. 
* I will look at the strings of the executable, some interesting ones are: “Find Password”, “IsDebuggerPresent”.
IsDebuggerPresent is a check the file is probably doing to detect debuggers, if it is found usually the program will terminate itself to prevent further debugging.
* I opened the file with PeStudio, the file is a C++ program, 32 bit.

![image](https://user-images.githubusercontent.com/66572300/233787321-72c3cb67-2033-4817-a54f-5bfba1b12a0e.png)

*  I will run the file on a virtual machine and see what happens. A window is opened and seems like we do need to enter a password as we saw from the strings of the file:

![image](https://user-images.githubusercontent.com/66572300/233787333-89905268-3bc7-4734-90f6-26e4e212b6e6.png)

* I’ll open the exe file in IDA at the moment to watch the code. 
From looking a bit on the main function, I can see that there is a push for an offset str1: “LiL2281337”, and right after that a call for strcmp.
After the strcmp there is a jmp for “Nice job password found”.
Seemes like we found the password, will check it.

![image](https://user-images.githubusercontent.com/66572300/233787351-fd8c5e7f-802e-4230-80a5-0db9aa424f87.png)

* We will run the program now and see if it is the password:

![image](https://user-images.githubusercontent.com/66572300/233787362-a65fcc49-1b3f-4828-b538-b969510cc52c.png)

Success!
