# Bash Scripting Notes

## What is a Bash Script?
A **Bash script** is a file containing commands that you want the computer to execute automatically. Bash scripting is useful for **automating tasks** and **managing systems**.

---

## Getting Started with Bash Scripting

### The Shebang Line
The first line in a script should be:

```bash
#!/bin/bash
```

This tells the system to use Bash to execute the script. The **shebang (`#!`)** allows you to specify different interpreters, e.g., `/usr/bin/python` for Python scripts.

### Making the Script Executable
To make your script executable, use:

```bash
chmod +x yourscript.sh
```

To run it:

```bash
./yourscript.sh
sh yourscript.sh
bash yourscript.sh
```

---

## Comments in Bash
Comments are **informative lines** that are not executed as part of the code.

- **Single-line comment** → Start with `#`
- **Multi-line comment** → Start with `:'` and end with `'`

Example:

```bash
# This is a single-line comment

:'
This is a multi-line comment.
Spans multiple lines.
'
```

---

## Running Scripts from Anywhere
To run a script from anywhere **without specifying its path**:

1. Move the script to a directory in the `$PATH` variable, e.g., `/usr/local/bin`:
   ```bash
   sudo mv yourscript.sh /usr/local/bin/scriptname
   ```
2. Make it executable:
   ```bash
   chmod +x /usr/local/bin/scriptname
   ```

Now, you can run it by simply typing `scriptname` in the terminal.

---

## Variables in Bash
Variables store values that can be used throughout the script.

Example:

```bash
greeting="Hello!"
echo "$greeting"

count=42
name="Fatima"
age=19
fruits=("apple" "banana" "orange")
```

---

## Parameters in Bash
### Passing Parameters to a Script
```bash
echo "Parameter 1: $1"
echo "Parameter 2: $2"
echo "Parameter 3: $3"
```
Run the script with arguments:
```bash
./script.sh hello hi hey
```
To print **all parameters**:
```bash
echo "All Parameters: $@"
```

---

## Arithmetic Expansion
Perform calculations in Bash.

```bash
number1=5
number2=7
result=$((number1 + number2))
echo "The sum of $number1 and $number2 is: $result"
```

### Arithmetic with Parameters
```bash
./newscript 8 10
length=$1
width=$2
```

---

## Conditional Statements

### If Statements
Basic structure:
```bash
if [ condition ]; then
   # Code block
fi
```

### Comparison Operators
| Operator | Meaning |
|----------|---------|
| `-eq` | Equal to |
| `-ne` | Not equal to |
| `-lt` | Less than |
| `-gt` | Greater than |
| `-le` | Less than or equal to |
| `-ge` | Greater than or equal to |

Example:
```bash
grade=85

if [ $grade -ge 90 ] && [ $grade -le 100 ]; then
   echo "Complete!"
fi
```

---

## Loops
### While Loop
```bash
count=1
while [ $count -le 5 ]; do
    echo "Count: $count"
    ((count++))
done
```

### For Loop
```bash
for i in {1..5}; do
    echo "Number: $i"
done
```

---

## Functions in Bash
Functions group commands to avoid repetition.

```bash
hello_world() {
    echo "Hello World"
}
hello_world
```

### Functions with Parameters
```bash
greet_person() {
    local name="$1"
    echo "Hello, $name"
}
greet_person "Fatima"
```

---

## User Input in Bash
```bash
echo "Enter your name:"
read name
echo "Hello, $name!"
```

---

## Error Handling
### Exit Codes
- `0` → Success ✅
- `1+` → Error ❌

Example:
```bash
mkdir /restricted_folder
if [ $? -ne 0 ]; then
    echo "Error: Could not create the folder."
    exit 1
fi
```

### Debugging with `set`
- `set -e` → Exit on error
- `set -u` → Exit on undefined variables
- `set -x` → Print each command before executing
- `set -eux` → Combine all three

```bash
set -eux
```

---

## File Handling
### Writing to a File
```bash
write_file() {
    local filepath="$1"
    local data="$2"
    echo "$data" > "$filepath"
}
write_file "read.txt" "Hello"
```

### File Checksums
To check file integrity:
```bash
md5sum file.txt
sha256sum file.txt
```

Function to calculate checksums:
```bash
calculate_md5sum() {
    local file_path="$1"
    md5sum "$file_path"
}
calculate_md5sum "read.txt"
```

---

## Changing the `$PATH` Permanently
To add a directory to the `$PATH`, edit `.bashrc`:
```bash
echo 'export PATH=$PATH:~/myscripts' >> ~/.bashrc
source ~/.bashrc
```

Now, scripts in `~/myscripts` can be run from anywhere.

---

## Reading Environment Variables
Access environment variables:
```bash
echo "Home Directory: $HOME"
echo "Current User: $USER"
```
Assign to local variables:
```bash
my_home="$HOME"
echo "Home directory: $my_home"
```

---

## Summary
- **Bash scripts automate tasks**
- **Use `chmod +x` to make scripts executable**
- **Use `$PATH` for global access**
- **Error handling with exit codes**
- **Use `set -eux` for debugging**
- **Functions help reuse code**
- **Loops automate repetitive tasks**


