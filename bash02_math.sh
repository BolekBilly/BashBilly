
#!/usr/bin/env bash

echo 
echo Bash lessons 02: Math
echo 
echo '$((2+3))' = $((2+3))
echo '$((8-5))' = $((8-5))
echo '$((2*3))' = $((2*3))
echo '$((8/4))' = $((8/4))
echo '$(( (3+6) - 5 * (5*2) ))' = $(( (3+6) - 5 * (5*2) ))
echo

a=3
((a+=3))
echo $a
((a++))
echo $a

