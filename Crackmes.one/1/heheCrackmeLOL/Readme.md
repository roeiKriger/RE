# heheCrackmeLOL
Author: thebovl

### Solution
* There is no README in the challenge, I get one exe file named “based”. 

![image](https://user-images.githubusercontent.com/66572300/233786971-0e1859df-ad87-4532-bea4-eda30d40c4ba.png)


* Before running the program I will check it’s strings to get some more knowledge about what I might deal with soon.
I see some interesting strings: “label10”, “label20”, “Form1”, “button1”, “MessageBox”, “Key have error!”, “Activated”.
Seems like I will need to find a key, and that the program will open up a window with some labels, message box.

* I opened the file with PeStudio, the file is .Net file.
Moreover, it seems like the program could be malicious, based on VT results that we get:

![image](https://user-images.githubusercontent.com/66572300/233787043-9cf454b2-8e12-4d1b-ad54-0a094d3563a8.png)

* I will run the exe file and will see what we can figure out now:
First I get the next message:

![image](https://user-images.githubusercontent.com/66572300/233787058-ba86efae-f1a4-46f5-ad7e-12935a1573be.png)

* I will press OK.
I get the next window:
It contains label and buttons, seems like I need to find a key in order to activate the file.

![image](https://user-images.githubusercontent.com/66572300/233787067-afeee37e-0fd7-4fa9-a279-61821e4b7f5a.png)

* Time to open up the code, because we are dealing with a .Net file I will throw it in dnspy.

![image](https://user-images.githubusercontent.com/66572300/233787083-7a17cb86-f124-4d12-a14a-695c33f7bf1c.png)

* Here I found the next interesting part of code, where there is a comparison of a string with the textBox1.text, and then if the comparison is true, I need to get the wanted output to the screen. 
I will copy the key and check it in the exe.

![image](https://user-images.githubusercontent.com/66572300/233787096-a3083a99-4a76-4a54-b6f6-024e4a453e7f.png)

Success!

