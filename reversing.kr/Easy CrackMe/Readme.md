# Easy CrackMe.exe

When downloading the challenge we get only an exe file without any instructions.

### My steps to solve the problem:
* From analyzing the file with PEiD, seems like the code is written in C++, 32 bit, doesn’t seems packed at the moment.
* From a quick look in PEview it seems like that virtual memory and disk memory are similar, which indicates again that the file isn’t packed.
* I opened the binary strings in bintext to see if I can find some interesting strings.
Some of the strings are: “Incorrect Password”, “Congratulation !!”, seems like I might need to find a password or generate one.
* I executed the file, and got the next screen: 

![This is an image](https://github.com/roeiKriger/RE/blob/main/reversing.kr/Easy%20CrackMe/Easy%20dialog.png)

* I will continue my static analysis with IDA.
I am interested to find functions which are connected for checking the text which was entered as a password. So interesting key words will be CMP, Compare, strcmp, getchar and more.

* The first interesting chunk of code is the next one: 

![This is an image](https://github.com/roeiKriger/RE/blob/main/reversing.kr/Easy%20CrackMe/letter%20a.png)

* We get text item (most likely the password the user entered) and then there is a CMP instruction, as we can see there is a comparison of only one char, with the ptr which goes to [esp+5], therefore, we check if the second char in the password is the letter ‘a’.
* If the CMP was successful we get to another interesting code: 

![This is an image](https://github.com/roeiKriger/RE/blob/main/reversing.kr/Easy%20CrackMe/5y%20chars.png)

* Now there is a code check of two chars (size 2), and it is being strncmp tp the string 5y, 0Ah = 10 in hex, we are now comparing the 3rd and 4th letters in the password, to be 5y.
* Then we jmp to the next code (if till now the comparison was successful), which works the same way and now do a compare for the next string: 

![This is an image](https://github.com/roeiKriger/RE/blob/main/reversing.kr/Easy%20CrackMe/R3versing%20chars.png)

### At the moment the password is: _a5yR3versing

* After that, there is a comparison with the number 45, I modified it to ‘E’ to make it more readable:

![This is an image](https://github.com/roeiKriger/RE/blob/main/reversing.kr/Easy%20CrackMe/letter%20E.png)

* Eventually, if this last CMP instruction was correct we jump to the desired code of congratulations!

## Password: Ea5yR3versing

![This is an image](https://github.com/roeiKriger/RE/blob/main/reversing.kr/Easy%20CrackMe/Cracked.png)

