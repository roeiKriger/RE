# CrackMe #2 - register me in your name
Author: crackinglessons.com

### Solution
* There is no README in the challenge, I get one exe file named “CrackMe2”. 
* I will look at the strings of the executable, some interesting ones are: “keyfile.txt”, “IsDebuggerPresent”.
IsDebuggerPresent is a check the file is probably doing to detect debuggers, if it is found usually the program will terminate itself to prevent further debugging.
* I opened the file with PeStudio, the file is a C++ program, 32 bit.
Moreover, it seems like the program could be malicious, based on VT results that we get:

![image](https://user-images.githubusercontent.com/66572300/233784660-56b52f21-4364-4737-9bc5-ed33bb6244a2.png)


* I will run the file on a virtual machine and see what happens. A window is opened and seems like we are not looking for a flag, this time we might need to modify the code of the program, and to crack it. 
At the moment the software is not registered. We will want to change it.

![image](https://user-images.githubusercontent.com/66572300/233784683-4e664db5-c913-4399-a48e-0a8a7acf2bbd.png)


*  I’ll open the exe file in IDA at the moment to watch the code. 
From looking a bit on the main function, I notice again a suspicious instruction: 

![image](https://user-images.githubusercontent.com/66572300/233784690-06931471-60cf-4ca4-9218-80ffa3ff23ff.png)


* Could it be that a file was created on the folder I am working on with some more information?
No. I can’t find any clue regarding the suspicious text file.

* I want to check if a “keyfile” was created on my computer, maybe in another folder.
I will run the program again, but this time, I will open up ProcMon (Process Monitor).
I will use a Filter on the file name, so I will find only actions that are happening because of the file we research.

![image](https://user-images.githubusercontent.com/66572300/233784699-642b9eab-92b5-41e8-817b-6b3aa938fb46.png)


* Moreover, I will filter by the operation we are interested in, CreateFile:
![image](https://user-images.githubusercontent.com/66572300/233784705-627adc5d-f839-4cbf-902e-a5ac56084dc3.png)


* And then, we will run the program and look for the results we get.
Seems like a file with that name was not found by the program, and I can not find more info about this file.
All clues says that this file wasn’t created on my machine (To make sure you can remove first filter on the file name).

![image](https://user-images.githubusercontent.com/66572300/233784718-5fa9a1c2-1c4c-4f56-be08-9dd142303b3b.png)

* Back to our IDA, I will switch to pseudo code mode.

![image](https://user-images.githubusercontent.com/66572300/233784742-abd07d63-3e6f-4b94-885f-a4f48b5b5685.png)

* It seems like a CreateFileA happens, and we save what is being returned from it in “FileA”.
In case you don’t know what is being returned then a quick search on Microsoft website will help you with that, and to see that a Handle returns.

![image](https://user-images.githubusercontent.com/66572300/233784754-f9a1aac8-cb49-4ef8-a62b-510c1aa23af3.png)

* The program tries to get the handle of a text file named “keyfile” but we saw that that file wasn’t created.
So its time for us to help the programmers a bit.
In the folder where the exe file is, I will create a text file named “keyfile”, because we saw on ProcMon that the exe searched for the file on that path:

![image](https://user-images.githubusercontent.com/66572300/233784764-cfefc7f5-122c-4641-814a-eb2b7ab029a5.png)

* We will run the program now and see if any change happened.
![image](https://user-images.githubusercontent.com/66572300/233784773-793e2b7c-c4ea-484c-8dcf-6c71c83938d4.png)

The program is now registered, just like we wanted.
Success!

