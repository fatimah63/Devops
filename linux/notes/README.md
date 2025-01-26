# Linux notes
##  commands:
rm -rf / = tells the system to remove everything in the Linux file system. Don’t use it 
- echo $ENVIRONMENTVARIABLE
- To create a directory or file with spaces, you can use speech marks or back slash
mkdir My\ Project \ 2
pwd = print working directory 
shows the path of the current directory you’re in 
cd = change directory 
cd..= move up one level in the directory 
cd - = move back to the previous directory 
cd ~ = move the the home directly 
ls = list files in the current directory 
hidden directories start with . 
ls -a = list all files including hidden ones 
ls -l = show detailed information (who owns the file,size and date)
ls / = show the contents of the root directory 
To see the files in a specific directory you must do ls directoryname/
vim = text editor.  Vim will create the file if it doesn’t exist 
vim multiline.txt
Once you type vim you will enter command mode. Vim has 7 modes. The three most important ones are the command mode (press esc allows you to delete text, copy lines), insert mode (press I, and used for inserting texts), visual mode (press v, used for selecting texts).
echo = can be used to display messages on the terminal or put texts into files 
echo “Hello” puts Hello into the terminal 
echo “Hello” > file.txt puts “Hello” into file.txt
echo “Bye”>> file.txt puts “Bye” into file.txt without deleting “Hello”
