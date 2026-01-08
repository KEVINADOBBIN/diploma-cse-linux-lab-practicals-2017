# 1️⃣ FILE PERMISSIONS

# Create a file
echo "Hello Linux" > file.txt

# Check permissions
ls -l file.txt
# Output: -rw-r--r-- 1 codespace codespace 12 Jan 24 15:09 file.txt

# Change permissions to 777 (read/write/execute)
chmod 777 file.txt
ls -l file.txt
# Output: -rwxrwxrwx 1 codespace codespace 12 Jan 24 15:09 file.txt

# Change permissions to 000 (no permissions)
chmod 000 file.txt
ls -l file.txt
# Output: ---------- 1 codespace codespace 12 Jan 24 15:09 file.txt

# 2️⃣ FILE OWNERSHIP

# Create a directory
mkdir linux

# Change ownership to root
sudo chown root:root linux
ls -ld linux
# Output: drwxr-xr-x 2 root root 4096 Jan 27 11:51 linux

# Change ownership back to current user
sudo chown codespace:codespace linux

# 3️⃣ HARD AND SOFT LINKS

# Create a file
cat > file1 << EOF
welcome to linux
welcome to java
EOF

# Hard link
ln file1 file2
ls
# Output: file1 file2
cat file2
# Output:
# welcome to linux
# welcome to java

# Soft link
ln -s file1 file3
ls -l
# Output: file3 -> file1
cat file3
# Output:
# welcome to linux
# welcome to java

# 4️⃣ HEAD AND TAIL

# Create file f4
cat > f4 << EOF
linux
java
data structure
multi media
html
kannada
EOF

# Head
head f4
# Output:
# linux
# java
# data structure
# multi media
# html
# kannada

head -n 5 f4
# Output:
# linux
# java
# data structure
# multi media
# html

# Tail
tail f4
# Output:
# linux
# java
# data structure
# multi media
# html
# kannada

tail -n 3 f4
# Output:
# html
# kannada

# 5️⃣ CUT AND PASTE

# Cut first 3 characters
cut -c 1-3 f4
# Output:
# lin
# jav
# dat
# mul
# htm
# kan

# Paste two files side by side using #
paste -d "#" f4 alex.txt
# Output example:
# linux#
# java#
# data structure#
# multi media#
# html#
# kannada#

# 6️⃣ SORT, UNIQ, TR, PR

# Sort alphabetically
sort f4
# Output:
# data structure
# html
# java
# kannada
# linux
# multi media

# Remove duplicates
uniq f4
# Output: same as file because no duplicates

# Translate characters (* -> &)
tr "*" "&" < f4
# Output: same as file (if no *)

# Prepare file for printing
pr f4
# Output:
#     Jan 31 14:22
# Page 1
# linux
# java
# data structure
# multi media
# html
# kannada

# 7️⃣ GREP AND EGREP

# Create file6
cat > file6 << EOF
id name course sem phoneno state
455 CXZ me 3rd 1542369 njuhb
258 Fre a.m 1st 1563247 orisa
123 nji CS 4th 1234567 Bengal
654 uhb ec 2nd 9874563 kerala
753 vgy nb 5th 1478529 mkoi jn
EOF

# Basic grep
grep "CXZ" file6
# Output:
# 455 CXZ me 3rd 1542369 njuhb

grep "uhb" file6
# Output:
# 654 uhb ec 2nd 9874563 kerala

# Grep options
grep -n "uhb" file6
# Output: 4:654 uhb ec 2nd 9874563 kerala

grep -c "CXZ" file6
# Output: 1

grep -1 "nji" file6
# Output:
# 258 Fre a.m 1st 1563247 orisa
# 123 nji CS 4th 1234567 Bengal
# 654 uhb ec 2nd 9874563 kerala

# Regex: match any 2 characters followed by 3
grep "..3" file6
# Output:
# 455 CXZ me 3rd 1542369 njuhb

# Extended grep (egrep)
grep -E "b" file6
# Output:
# 123 nji CS 4th 1234567 Bengal
# 654 uhb ec 2nd 9874563 kerala

# Multiple patterns
grep -e "name" -e "course" file6
# Output:
# id name course sem phoneno state

# Complex OR pattern
egrep "CS|Fre|Bengal" file6
# Output:
# 258 Fre a.m 1st 1563247 orisa
# 123 nji CS 4th 1234567 Bengal
