# Crack Me With Ui
Author: yxupy
file password to extract: crackmes.one

### Solution
* There is no README in the challenge, I get one exe file named “Crack Me” and few dll files.
* I will look at the strings of the exe, some interesting ones: “Form1”, “set_PasswordChar”, “Thanks For Cracking this”.
* I opened the file with PeStudio, the file is a .Net file, 32 bit.   

![image](https://user-images.githubusercontent.com/66572300/233786290-cf94a96c-1ea8-45d4-a8e0-99f977856be1.png)

* When running the exe I get a windows which I need to enter a text in order to login, no other info. I tried to enter the next text: “12345” got no response.

![image](https://user-images.githubusercontent.com/66572300/233786303-6ed48cc2-b278-4451-9b00-0cef3f56d34f.png)

* I will try to open the file on dnSpy.
In the code we can see few options, that when I am trying to enter them then I at least get a msg box response that hinting me that I am not on the right path:

![image](https://user-images.githubusercontent.com/66572300/233786320-4191108e-7239-473b-a519-83afba9ed041.png)

* Also I can see that correct password that is being compared there, I will check if I get a different response when typing it in:

![image](https://user-images.githubusercontent.com/66572300/233786349-63d047fd-33e1-4117-aa68-587834ed574f.png)

* We got the test "Thanks For Cracking This"
Success!
