
#!/bin/bash

echo "REGISTER NUMBER: 408CS15015"
echo "EXPERIMENT: PROCESS MANAGEMENT COMMANDS"
echo "----------------------------------------"

echo
echo "1. ps  -> Display processes opened by the current user"
ps

echo
echo "2. ps -f  -> Full listing showing PPID"
ps -f

echo
echo "3. ps -e  -> Display all processes (system + user)"
ps -e

echo
echo "4. ps -u  -> Display processes of current user"
ps -u

echo
echo "5. ps -a  -> Display all user processes"
ps -a

echo
echo "6. ps -l  -> Long listing showing memory-related information"
ps -l

echo
echo "7. ps -t  -> Processes running on current terminal"
ps -t

echo
echo "8. Running a background process (cat > demo_file)"
cat > demo_file &
sleep 2

echo
echo "9. ps -A  -> Show all running processes"
ps -A

echo
echo "10. Killing the background cat process"
PID=$(ps -A | grep "cat > demo_file" | awk '{print $1}')
if [ -n "$PID" ]; then
    kill $PID
    echo "Process $PID killed successfully"
else
    echo "No background cat process found"
fi

echo
echo "11. Final process list"
ps

echo
echo "Experiment completed successfully."
