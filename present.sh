#/bin/bash
COURSE="Devops from current script"
echo "Before calling other script, course: $COURSE"
echo "process ID of PRESENT SCRIPT: $$"
./other.sh 

echo "After calling the other script, course: $COURSE"
