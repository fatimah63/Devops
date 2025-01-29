# Linux notes
### Dangerous Commands
- `rm -rf /` = tells the system to remove everything in the Linux file system. **Don’t use it**.

---

### Environment Variables
- `echo $ENVIRONMENTVARIABLE` = prints the value of an environment variable.
- `echo $SHELL` = shows the shell you’re currently using.
- `printenv` or `env` = view all current environment variables.
- `echo $VARIABLE` = view a specific environment variable.
- **Temporary Setting**:
  - `export NAME=VALUE` = temporarily sets an environment variable.
    - Example: `export HOME="/my/custom/home"`, `export USER="Alice"`, `export SHELL="/bin/zsh"`.
    - `export PATH=/custom/bin:$PATH` = adds a new directory to the system path.
- **Permanent Setting**:
  - Add the variable to `.bashrc` or `.zshrc` (configuration files).
    - Example: `vim .zshrc`, add `export USER="Alice"`, then `source .zshrc` to apply changes.

---

### File and Directory Management
#### Creating Files and Directories
- `touch file.txt` = creates a file or updates its timestamp.
- `mkdir My\ Project\ 2` = creates a directory with spaces (use backslashes or quotes).
- `mkdir -p newdirectory/project/project2` = creates nested directories.
- `mkdir .hiddendirectoryname` = creates a hidden directory.

#### Navigating Directories
- `pwd` = prints the current working directory.
- `cd` = changes directory.
  - `cd..` = moves up one level.
  - `cd -` = moves back to the previous directory.
  - `cd ~` = moves to the home directory.
- `ls` = lists files in the current directory.
  - `ls -a` = lists all files, including hidden ones.
  - `ls -l` = shows detailed information (owner, size, date).
  - `ls /` = shows contents of the root directory.
  - `ls directoryname/` = shows files in a specific directory.
  - `ls -R project` = lists directories recursively.

#### Copying, Moving, and Removing Files
- `cp` = copies files and directories.
  - `cp multiline.txt multilinecopy` = copies a file.
  - `cp -r oldirectory newdirectory` = copies a directory.
- `mv` = moves or renames files and directories.
  - `mv multiline.txt multiold.txt` = renames a file.
  - `mv multiline.txt newdirectory` = moves a file to a directory.
- `rm` = removes files and directories.
  - `rm multiline.txt` = removes a file.
  - `rm -r newdirectory` = removes a non-empty directory.
- `rmdir` = removes empty directories.
  - Example: `rmdir project2`.

---

### File Permissions
#### Understanding Permissions
- `rwx` = read, write, execute.
- Permissions are assigned to three categories:
  - User (owner), Group, Others.
- **Binary Representation**:
  - `000` = no permissions.
  - `111` = read, write, execute.
  - `101` = read and execute.
- **Octal Representation**:
  - Execute = 1, Write = 2, Read = 4.
  - Example: `rwx rw- rw-` = 766.

#### Changing Permissions
- `chmod` = changes file permissions.
  - Symbolic: `chmod u+x,g+r,o-w file.txt` = gives user execute, group read, and removes others' write permissions.
  - Numeric: `chmod 666 file.txt` = sets permissions to `rw-rw-rw-`.
  - Example: `chmod ug=rw,o=r file.txt` = allows users and groups to read/write, others to read only.

#### Changing Ownership
- `chown` = changes file ownership.
  - `sudo chown newuser example.txt` = changes the owner of a file.
  - `sudo chown -R newuser:newgroup mydirectory` = changes ownership of a directory and its contents.
- `chgrp` = changes group ownership.
  - Example: `sudo chgrp newgroup example.txt`.

---

### Text Editors
- `vim` = text editor.
  - Creates a file if it doesn’t exist.
  - **Modes**:
    - Command Mode (press `Esc`): delete, copy lines.
    - Insert Mode (press `I`): insert text.
    - Visual Mode (press `V`): select text.
  - Example: `vim multiline.txt`.

---

### File Content Manipulation
#### Displaying Content
- `cat file.txt` = displays file content.
  - `cat -b` = adds line numbers.
  - `cat -n` = adds line numbers to all lines.
  - `cat -s` = squeezes blank lines.
  - `cat -E` = adds `$` at the end of lines.
  - `cat file.txt file2.txt > combined.txt` = combines files.
  - `cat myfile >> myfile2` = appends content.

#### Searching Content
- `grep` = searches for specific content in files.
  - `grep "hi" file.txt` = searches for "hi".
  - `grep -i` = ignores case.
  - `grep -r` = searches recursively in directories.
  - `grep -n` = displays matching lines with line numbers.
  - `grep -v` = inverts the search (excludes matching lines).
  - Example: `grep -r "error" /path/to/logs`.

#### Viewing File Head/Tail
- `head` = displays the first 10 lines of a file.
  - `head -n 5 multiline.txt` = shows the first 5 lines.
- `tail` = displays the last 10 lines of a file.
  - `tail -n 6 multiline.txt` = shows the last 6 lines.
- Combine `head` and `tail`:
  - `head -n 10 multiline.txt | tail -n 5` = shows lines 6-10.

---

### Shells and Customization
#### Shell Types
- Different shells: `bash`, `zsh`, `fish`, etc.
- **Installing ZSH**:
  - `sudo apt-get install zsh`.
  - Change default shell: `chsh -s /bin/zsh`.
  - Reboot: `sudo reboot`.

#### Oh My Zsh
- Customizes Zsh with themes, plugins, and auto-suggestions.
- Configuration file: `.zshrc`.
  - Example: `vim .zshrc`.
  - Apply changes: `source .zshrc`.

---

### User and Group Management
#### Creating Users
- `sudo useradd newuser` = creates a new user.
- `sudo passwd newuser` = sets a password for the user.
- `su - newuser` = switches to the new user.
- **Granting Sudo Access**:
  - `sudo usermod -aG sudo newuser`.
  - Remove sudo access: `sudo deluser newuser sudo`.

#### Creating Groups
- `sudo groupadd newgroup` = creates a new group.
- `sudo usermod -aG newgroup newuser` = adds a user to a group.
- `sudo groupdel newgroup` = deletes a group.
- Users can belong to multiple groups:
  - Example: `sudo usermod -aG newgroup1,newgroup2 newuser`.

---

### Standard Streams and Redirection
- **Standard Streams**:
  - `stdin` = standard input.
  - `stdout` = standard output.
  - `stderr` = standard error.
- **Redirection**:
  - `myprogram > output.txt` = saves output to a file.
  - `ls oldirectory 2> error.txt` = redirects errors to a file.
  - `ls nonexistentdir existentdir &> alloutput.txt` = redirects both output and errors.
  - Discard output: `ls oldirectory > /dev/null`.

---

### Aliases
- `alias hello='echo "Hello"'` = creates a temporary alias.
- **Permanent Aliases**:
  - Add to `.zshrc` or `.bashrc`.
  - Example: `vim .zshrc`, add `alias hello='echo "Hello"'`, then `source .zshrc`.

---

### Linux CLI Shortcuts
- `history` = shows previous commands with numbers.
- `!244` = runs command number 244 from history.
- Reverse search: `Ctrl + R` to search for previous commands.

---

### Scripts
- A script is a file with commands to automate tasks.
- **Creating a Script**:
  - `vim set_permissions.sh`.
  - Make it executable: `chmod +x set_permissions.sh`.
  - Run it: `./set_permissions.sh`.

---

### Linux File System Directories
- `/` (Root): Starting point of the file system.
- `/home`: User files and folders.
- `/bin`: Essential programs (e.g., `ls`, `cat`).
- `/etc`: System-wide configuration files.
- `/var`: Files that change often (e.g., logs).
- `/usr`: Programs and files for regular use.
- `/tmp`: Temporary files.
- `/dev`: Device files (e.g., hard drives).
- `/sbin`: Admin-only binaries.

---

### Sudo and Root Access
- `sudo` = executes commands as a superuser.
- `sudo su` = switches to the root user.
- `exit` = returns to normal user.
- **Sudo Logs**:
  - View logs: `sudo tail /var/log/auth.log`.

