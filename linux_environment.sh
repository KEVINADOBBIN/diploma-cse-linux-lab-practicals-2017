#!/bin/bash

echo "REGISTER NUMBER: 408CS15015"
echo "EXPERIMENT NO: 12"
echo "EXPERIMENT NAME: LINUX ENVIRONMENT"
echo "-----------------------------------"

echo
echo "1. Display Environment Variables (env)"
env

echo
echo "2. Display HOME directory"
echo $HOME

echo
echo "3. Display SHELL path"
echo $SHELL

echo
echo "4. Display PATH variable"
echo $PATH

echo
echo "5. Display History Size"
echo "Default HISTSIZE:"
echo $HISTSIZE

echo
echo "Changing HISTSIZE to 10"
HISTSIZE=10
echo "Updated HISTSIZE:"
echo $HISTSIZE

echo
echo "6. Display Command History"
history

echo
echo "7. Terminal Settings (stty -a)"
stty -a

echo
echo "8. Terminal Settings (stty -g)"
stty -g

echo
echo "9. Display Calendar"
cal

echo
echo "10. Display Hostname"
hostname

echo
echo "NOTE:"
echo "Commands like wall, su, shutdown, and ulimit require"
echo "special permissions and are not executed in this script."
echo "They are explained in theory."

echo
echo "Experiment completed successfully."
