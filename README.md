# CS510-A2

Program to Practice bash commands containing two files:
  - dir.sh
  - alter.sh
  
 dir.sh creates a directory "a" with 500 subdirectories, each containing a file "file.txt" that has 5 lines.
 alter.sh changes the content of the file based on the last number of the subdirectory. 
 
 To start the program, make sure you are in the right directory, and run "sh alter.sh" only.
 
Remarks:

I tried to implement a dynamic approach to let the user choose the name of the file, however I could not make it work because I did not find a way to make the two files communicate the variable that was needed to get the name of the directory from the first file.
