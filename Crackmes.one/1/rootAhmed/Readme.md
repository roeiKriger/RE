# rootAhmed
Author: rootAhmed

### Solution
* There is no README in the challenge, I get one exe file named “ROOT.AHMED”. 
* I will look at the strings of the exe, some interesting ones: “Timer”, “Enter key”, “Console”, “Readline”.
Seems like we are dealing with a C# code.
* I opened the file with PeStudio, Seems like we are dealing with a .Net program as expected, 32 bit. 

![image](https://user-images.githubusercontent.com/66572300/233787202-fb4af654-d4dc-4de3-914e-cde52555b17f.png)

* Now its time to run the file and see what happens.
We get a console asks for a key. After two wrong guesses the program exits.

![image](https://user-images.githubusercontent.com/66572300/233787218-df43eb25-72c0-478b-88b6-80be0d23a610.png)

* I will try now to open up the program in dnSpy to gather more information about the key. 
Seems like there is a string variable named “a”. The string is being compared to a another string “b”. “b” is reading from the line that was provided by the user and then both are compared.
So we will try entering string “a” as our key to the console.

![image](https://user-images.githubusercontent.com/66572300/233787233-078eab29-6ae7-4d8a-b9b9-6e9736c22e35.png)

* Let's see:

![image](https://user-images.githubusercontent.com/66572300/233787254-53e97fbb-3cdb-41a6-b90e-9f25104181b2.png)

Success!

