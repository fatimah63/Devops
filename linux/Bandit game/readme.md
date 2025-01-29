
**Bandit: Passwords**

**Level 0-1**  
- **Commands**:  
  - `cd ~`  
  - `pwd`  
  - `ls`  
  - `cat readme`  
- **Result**: Led me to the password `ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If`.

**Level 1-2**  
- **Commands**:  
  - `cd ~`  
  - `ls`  
  - `cat ./-`  
- **Result**: Led me to the password `263JGJPfgU6LtdEvgfWU1XP5yac29mFx`.

**Level 2-3**  
- **Commands**:  
  - `cd ~`  
  - `ls`  
  - `cat “spaces in this filename”`  
- **Result**: Led me to the password `MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx`.

**Level 3-4**  
- **Commands**:  
  - `cd inhere`  
  - `ls -a`  
  - `cat “...Hiding-From-You”`  
- **Result**: Led me to the password `2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ`.

**Level 4-5**  
- **Commands**:  
  - `cd inhere`  
  - `file ./*`  
  - `cat ./-file07`  
- **Result**: This led me to the ASCII text, which is a human-readable file, and the password `4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw`.

**Level 5-6**  
- **Commands**:  
  - `cd inhere`  
  - `ls`  
  - `find -type f -size 1033c`  
- **Result**: This led me to `maybehere07`, then:  
  - `cat ./maybehere07/.file2`.  
- **Result**: Led me to the password `HWasnPhtq9AVKe0dmk45nxy20cvUa6EG`.

**Level 6-7**  
- **Commands**:  
  - `find / -size 33c -user bandit7 -group bandit6`  
- **Result**: This file path came up, so I used the `cat` command to get the password:  
  - `cat /var/lib/dpkg/info/bandit7.password`.  
- **Result**: Led me to the password `morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj`.

**Level 7-8**  
- **Commands**:  
  - `ls`  
  - `grep millionth data.txt`  
- **Result**: This led me to the password `dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc`.

**Level 8-9**  
- **Commands**:  
  - `sort data.txt | uniq -u`  
- **Result**: This led me to the password `4CKMh1JI91bUIZZPXDqGanal4xvAg0JM`.

**Level 9-10**  
- **Commands**:  
  - `strings data.txt | grep '======='`  
- **Result**: This led me to the password `FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey`.

**Level 10-11**  
- **Commands**:  
  - `base64 data.txt`  
- **Result**: This gave me `VkdobElIQmhjM04zYjNKa0lHbHpJR1IwVWpFM00yWmFTMkl3VWxKelJFWlRSM05uTWxKWGJuQk9WbW96Y1ZKeUNnPT0K`.  
  After realizing this wasn’t the final password, I did:  
  - `base64 --decode data.txt`  
- **Result**: Led me to the password `dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr`.

**Level 11-12**  
- **Commands**:  
  - `cat data.txt`  
- **Result**: This gave me `Gur cnffjbeq vf 7k16JArUVv5LxVuJfsSVdbbtaHGlw9D4`.  
  Then I had to rotate it by 13 positions, so I did:  
  - `tr 'a-z' 'n-za-mN-ZA-M' < data.txt`.  
- **Result**: This led me to `Ghe password is 7x16JAeUVi5LkVhJsfSVqoognHGyj9D4`.  
  It was wrong, so I did:  
  - `tr 'a-zA-Z' 'n-za-mN-ZA-M' < data.txt`.  
- **Result**: This led me to the password `The password is 7x16WNeHIi5YkIhWsfFIqoognUTyj9Q4`.

**Level 12-13**  
- **Commands**:  
  So I made a temporary directory under `/tmp` by doing:  
  - `mktemp -d`.  
- **Result**: It gave me the directory name `/tmp/tmp.BuOkBczr8t`. Then I moved `data.txt` from the home directory into this temporary directory by doing:  
  - `cp /home/bandit12/data.txt /tmp/tmp.BuOkBczr8t`.  
  Problems I kept facing:  
  I realized my problem was that I wasn't naming/renaming the compressed files. Every time I tried to decompress a file I wasn't renaming it at the end. For example, `data.txt` was a gz file, and I wasn't doing `mv data.txt data.gz`. Instead, I was doing `gunzip data.txt`, which led to me going around in circles.  
  By renaming the files again and again according to what file type they were, I was able to decompress them.  
  After that, these were the commands I used:  
  - `man gzip`, `
  - gunzip -c hex > hex12`, 
  - `file hex12`,
  - `mv data4.bin data4.gz`, 
  - `gunzip data4.gz`, 
  - `ls`, 
  - `file data4`, 
  - `mv data4 data4.tar`, 
  - `man tar`, 
  - `tar -xf data4.tar`, 
  - `ls`, `data4.tar`, 
  - `ls data4.tar`, 
  - `ls`, 
  - `file data5.bin`, 
  - `mv data5.bin data5.tar`, 
  - `tar -xf data5.tar`, 
  - `ls`, `cat data6.bin`, 
  - `strings data6.bin`, 
  - `strings data6.bin`, 
  - `file data6.bin`, 
  - `mv data6.bin data6.bz2`, 
  - `ls`, 
  - `bunzip2 data6.bz2`, 
  - `ls`, 
  - `file data6`, 
  - `mv data6 data.tar`, 
  - `ls`, 
  - `tar -xf data.tar`, 
  - `ls`, `file data8.bin`, 
  - `mv data8.bin data8.gz`, 
  - `gunzip data8.gz`, 
  - `ls`, 
  - `file data8`, 
  - `cat data8`.  
- **Result**: This led me to the password `FO5dwFsc0cbaIiH0h8J2eUks2vdTDwAn`.

**Level 13-14**  
- **Commands**:  
  I checked the permissions on the file `sshkey.private` and found that Bandit 13 only had read permissions, and Bandit 14 had read and write permissions.  
  I did `cat sshkey.private`, leaving me with this private key:  
  `MIIEpAIBAAKCAQEAxkkOE83W2cOT7IWhFc9aPaaQmQDdgzuXCv+ppZHa++buSkN+ ... (continued)`  
  Then I exited the session, and echoed this passkey into a file called `password14.txt`.  
  Then I logged in again for level 14 by doing:  
  - `ssh bandit14@bandit.labs.overthewire.org -p 2220 -i password14`.  
  I then got a warning ‘unprotected privatekeyfile’, so I exited, and changed the file permissions to 700, giving groups and others no read permissions.  
  So I did:  
  - `chmod 700 password14.txt`.  
  I pasted the password14 again, allowing me to get to level 14.  
  Lastly, I did:  
  - `cat /etc/bandit_pass/bandit14`.  
- **Result**: password `MU4VWeTyJk8ROof1qqmcBPaLh7lDCPvS`.

**Level 14-15**  
- **Commands**:  
  So I already have the password for bandit 14 (`MU4VWeTyJk8ROof1qqmcBPaLh7lDCPvS`).  
  I did `nc localhost 3000`, not realizing it was 30,000 instead of 3000.  
  I corrected it and did `nc localhost 30000`, which then gave me a blank line.  
  I entered the password for level 14 here, and it gave me this password:  
  `8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo`.

**Level 15-16**  
- **Commands**:  
  - `openssl s_client -connect localhost:30001`  
- **Result**: I was prompted to paste the password from the previous level, which gave me:  
  `kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx`.

**Level 16-17**  
- **Commands**:  
  - `nmap -p 31000-32000 localhost`  
- **Result**: After browsing through the scan, `31046` came up with echo so that port wouldn’t work; `31518` and `31691` also had echo, however, `31790` was ssl unknown. I went and copied the password for lvl 16, `kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx`,  
  Then I did:  
  - `openssl s_client -connect localhost:31790`.  
- **Result**: This did not work, and told me that I had the wrong password about 20 times.  
  I did some digging, and found that because the password started with `k`, I had to add `-quiet` at the end.  
  This left me with the private key.  
  I made a directory in `/tmp`, called `/tmp/banditpass`.  
  Then I made a file called `bandit17` (`cat > bandit17`).  
  I then pasted the private key into here.  
  I then did `chmod 700 pass17`.  
  I then did `ssh bandit17@bandit.labs.overthewire.org -p 2220 -i pass17`.  
  - `cat /etc/bandit_pass/bandit17`.  
- **Result**: password `EReVavePLFHtFlFsjn3hyzMlvSuSAcRD`.

**Level 17-18**  
- **Commands**:  
  - `cat passwords.new`  
  - `diff passwords.old passwords.new`  
- **Result**: This gave me the password `x2gLTTjFwMOhQ8oWNbMN362QKxfRqGlO`.

**Level 18-19**  
- **Commands**:  
  - `ssh bandit18@bandit.labs.overthewire.org -p 2220`  
  - `cat readme`  
- **Result**: Put in the password from the previous level (`x2gLTTjFwMOhQ8oWNbMN362QKxfRqGlO`).  
  Leading me to the password `cGWpMaKXVwDUNgPAVJbWYuGHVn9zl3j8`.

**Level 19-20**  
- **Commands**:  
  - `ls`  
- **Result**: I checked the Setuid file, and it gave me root permissions (`rwsr-x---`).  
  I ran the command:  
  - `./bandit20-do whoami`.  
- **Result**: `bandit20`.  
  Then, I did:  
  - `./bandit20-do cat /etc/bandit_pass/bandit20`.  
- **Result**: Led me to the password `0qXahG8ZjOVMN9Ghs7iOWsCfZyXOUbYO`.
```

