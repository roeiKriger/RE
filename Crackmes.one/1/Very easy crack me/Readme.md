# Very easy crack me
Author: thebovl

### Solution
* There is no README in the challenge, I get one exe file named “crackme”. 
* I will look at the strings of the exe, some interesting ones: “Form1”, “label1”, “textBox1”, “Username or password have error!”, “Welcome, thebovl!”.
Seems like we will need to find username and password, but maybe we already found the username: “thebovl”, we will see later on. 
* I will run the program now. Seems like the program does need username and password as expected: 

![image](https://user-images.githubusercontent.com/66572300/233787459-284022d8-4d41-4195-9527-2d9f54c8d9d7.png)

* I will open the file in PeStudio, seems like we are dealing with a .Net program.

![image](https://user-images.githubusercontent.com/66572300/233787485-a0cea794-cb7d-46e0-91d4-22ee12af0358.png)

* I will open now the program in dnSpy.
There I see in Form1 the next interesting code:

![image](https://user-images.githubusercontent.com/66572300/233787499-4492f032-591a-4d7e-a601-1a4a5221aabb.png)

* Seems like thebovl isn’t the username as I expected before.
But we will check now the two strings in the program.

![image](https://user-images.githubusercontent.com/66572300/233787510-3d9bee5a-b95e-43ed-a4d5-da02bca73c88.png)

Success!
