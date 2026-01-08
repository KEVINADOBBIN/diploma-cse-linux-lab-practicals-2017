# 1️⃣ CREATE A SAMPLE FILE

cat > f2 << EOF
id name course sem phoneno state
455 cxz me 3rd 1542369 njuhb
258 fre a.m 1st 1563247 orisa
123 nji cs 4th 1234567 Bengal
654 uhb ec 2nd 9874563 kerala
753 vgy nb 5th 1478529 mkoi jn
EOF

# Verify file content
cat f2
# Output:
# id name course sem phoneno state
# 455 cxz me 3rd 1542369 njuhb
# 258 fre a.m 1st 1563247 orisa
# 123 nji cs 4th 1234567 Bengal
# 654 uhb ec 2nd 9874563 kerala
# 753 vgy nb 5th 1478529 mkoi jn

# 2️⃣ FGREP: SEARCH FOR FIXED STRINGS

# Count occurrences of string "12"
fgrep -c "12" f2
# Output:
# 1

# Ignore case and search for "uhb"
fgrep -i "uhb" f2
# Output:
# 455 cxz me 3rd 1542369 njuhb
# 654 uhb ec 2nd 9874563 kerala

# Print lines that do NOT match "uhb"
fgrep -v "uhb" f2
# Output:
# id name course sem phoneno state
# 258 fre a.m 1st 1563247 orisa
# 123 nji cs 4th 1234567 Bengal
# 753 vgy nb 5th 1478529 mkoi jn

# 3️⃣ NOTES ON FGREP

# - fgrep searches for exact strings (no regex interpretation)
# - Special characters like *, ., [], etc., are treated literally
# - Useful when searching for fixed keywords in code or data files
# - Options:
#     -c : Print only count of lines containing the string
#     -i : Ignore case
#     -v : Print lines that do NOT match

# EXAMPLES:

# Count lines with "Bengal"
fgrep -c "Bengal" f2
# Output:
# 1

# Ignore case for "NJIHb"
fgrep -i "NJIHb" f2
# Output:
# 455 cxz me 3rd 1542369 njuhb

# Show lines that do not contain "Fre"
fgrep -v "Fre" f2
# Output:
# id name course sem phoneno state
# 455 cxz me 3rd 1542369 njuhb
# 123 nji cs 4th 1234567 Bengal
# 654 uhb ec 2nd 9874563 kerala
# 753 vgy nb 5th 1478529 mkoi jn
