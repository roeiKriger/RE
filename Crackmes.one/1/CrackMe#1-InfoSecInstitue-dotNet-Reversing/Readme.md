# CrackMe#1-InfoSecInstitue-dotNet-Reversing
Author: gogu87

### Solution
* There is no README in the challenge, I get one exe file named “CrackMe#1-InfoSecInstitue-dotNet-Reversing”. 
* I will look at the strings of the exe, some interesting ones: “txt_Pwd”, “Correct!”, “Error!”.
* I opened the file with PeStudio, the file is Microsoft.Net (Surprise), 32 bit.  
Moreover, it seems like the program could be malicious, based on VT results that we get:

![image](https://user-images.githubusercontent.com/66572300/233786474-3a26ca8b-011d-4679-9d8e-af0a99176871.png)

* I will run the file on a virtual machine and see what happens. A window is opened seems like a password is needed, and that it isn’t 12345! Sadly.

![image](https://user-images.githubusercontent.com/66572300/233786482-78aa4a58-bec2-4132-b487-70d46f719596.png)

* I’ll open the exe file in dnSpy, scrolling down Form1 page there I found the next code:

![image](https://user-images.githubusercontent.com/66572300/233786500-4c0719ea-91d1-441c-9726-3033a341afce.png)

* Looks like we encountered our password.
We will run the program and see if it is the password:

![image](https://user-images.githubusercontent.com/66572300/233786524-63d14ecc-1541-4b52-90fe-765eba7617d7.png)


Correct!
