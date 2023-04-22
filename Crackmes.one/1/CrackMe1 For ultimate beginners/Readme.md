# CrackMe1 - For ultimate beginners
Author: dajoh
password to extract: crackmes.one

### Solution
* After downloading the file and extracting its contents (using the password "crackmes.one") I see there is no README, we only have one exe (executable) file named: "CrackMe1".
* I will look at the strings of the exe, some interesting ones: “Enter password”, “IsDebuggerPresent".
IsDebuggerPresent is a check the file is probably doing to detect debuggers, if it is found - the program will usually terminate itself to prevent further debugging.
It appears that in this challenge our 'flag' is going to be to find a password.
* I opened the file with PeStudio, the file is a C++ program, 32 bit.
Moreover, it seems like the program could be malicious, based on VT results that we get:

![image](https://user-images.githubusercontent.com/66572300/233785765-df7afe9b-933c-4d18-bbb9-722d8c052d97.png)

* I will run the file on a virtual machine and see what happens. A window is opened asking for password.

![image](https://user-images.githubusercontent.com/66572300/233785774-deb43d94-44d6-4fde-84bd-649c8ba5480d.png)

* I’ll open the exe file in IDA. The code is now presented and I can watch the main function.
There from some short search, I notice that there is a offset “Enter password:” and also offset “easypassword” which is being passed to ecx register.
In the next block of code, I see that there is a comparison of ecx with eax. If so, the code is doing some comparison, with the offset, seems like we might have found our password?

![image](https://user-images.githubusercontent.com/66572300/233785787-4730bb2c-3820-4916-b51e-7ae19a6bf483.png)

* I will switch for pseudo code in IDA.
The code seems to check if a var12 is equal to “easypassword”.
If so, the program will return “Congratulations! You entered the correct password.”.
Seems like its time to check this password on our program.

![image](https://user-images.githubusercontent.com/66572300/233785803-142e2569-2bc0-42b7-af0e-495f949f0408.png)

* Success!

![image](https://user-images.githubusercontent.com/66572300/233785816-a66f6a73-f732-488e-a649-d6708a35a3a8.png)

