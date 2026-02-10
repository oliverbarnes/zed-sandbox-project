#!/bin/bash

# Sample Bash script to trigger INFO and HINT level diagnostics
# Requires bash-language-server with ShellCheck integration

# 1. SC2086 - Double quote to prevent globbing and word splitting (INFO)
filename=$1
cat $filename  # INFO: Double quote to prevent globbing and word splitting

# 2. SC2034 - Unused variable (INFO)
unused_variable="I am never used"  # INFO: unused_variable appears unused

# 3. SC2155 - Declare and assign separately (INFO)
export result=$(some_command)  # INFO: Declare and assign separately to avoid masking return values

# 4. SC2164 - Use cd ... || exit (INFO)
cd /some/directory  # INFO: Use 'cd ... || exit' in case cd fails

# 5. SC2129 - Consider using { cmd1; cmd2; } >> file (INFO)
echo "line 1" >> logfile
echo "line 2" >> logfile  # INFO: Consider using { cmd1; cmd2; } >> file

# 6. SC2046 - Quote to prevent word splitting (INFO)
files=$(ls *.txt)
rm $files  # INFO: Quote this to prevent word splitting

# 7. SC2002 - Useless cat (INFO)
cat file.txt | grep "pattern"  # INFO: Useless use of cat

# 8. SC2116 - Useless echo (INFO)
result=$(echo $variable)  # INFO: Useless echo

# 9. SC2162 - read without -r (INFO)
read input  # INFO: read without -r will mangle backslashes

# 10. SC2059 - Don't use variables in printf format (INFO)
format="Hello %s"
printf $format "World"  # INFO: Don't use variables in the printf format string

# 11. SC2103 - Use pushd/popd or cd ... || exit (INFO)
cd subdir
do_something
cd ..  # INFO: Use a ( subshell ) to avoid cd side effects

# 12. SC2004 - $/${} unnecessary on arithmetic variables (INFO)
count=5
result=$(($count + 1))  # INFO: $/${} is unnecessary on arithmetic variables

# 13. SC2236 - Use -n instead of ! -z (INFO)
if [ ! -z "$var" ]; then  # INFO: Use -n instead of ! -z
    echo "not empty"
fi

# 14. SC2088 - Tilde does not expand in quotes (INFO)
path="~/documents"  # INFO: Tilde does not expand in quotes
