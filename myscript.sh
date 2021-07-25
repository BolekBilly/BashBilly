
#!/usr/bin/env bash

echo
echo "hello world on ${BASH_VERSION}" 
echo "The kernel is $(uname -r)"

# VARIABLES:
mygreeting="Good Morning"
echo $mygreeting

# Read-only variable - can't change it later!
declare -r myname="Bolek"
echo "The value of myname variable is: $myname"

# lower/upper-case letters
declare -l lowstr="This is some TEXT!"
echo "Lowercase text: $lowstr"
declare -u upperstr="This is other TeXt ;)"
echo "Uppercase text: $upperstr"

# maths
echo  "maths: "$((4+4))

# color  & style
ulinered="\033[4;31;40m"
red="\033[31;40m"
none="\033[0m"
echo -e "\n"$ulinered"ERROR:"$none$red" Something went wrong."$none"\n"

# printf Vs. echo
printf "The results from printf are: %d and %d\n" $(( 2+2 )) $(( 3/1 ))

echo -e "\n----10----| --5--"

echo "Right-aligned text and digits"
printf "%10s: %5d\n" "A Label" 123 "B Label" 456 "<-Haha"

echo "Left-aligned text, right-aligned digits" "<-Haha"
printf "%-10s: %5d\n" "A Label" 123 "B Label" 456 "<-Haha"

echo "Left-aligned text and digits"
printf "%-10s: %-5d\n" "A Label" 123 "B Label" 456 "<-Haha"

echo "Left-aligned, right-aligned and padded digits"
printf "%-10s: %05d\n" "A Label" 123 "B Label" 456 "<-Haha"

echo "----10----| --5--"

# working with dates
date 
printf "%(%Y-%m-%d %H:%M:%S)T\n"
printf "%(%Y-%m-%d %H:%M:%S)T is %s\n" -1 "the time now"
echo

# arrays
declare -a todolist=("clean kitchen" "take a bath" "go to doctor" "find a dog")
echo ${todolist[2]}
todolist[5]="learn dancing"
todolist+=("go for a walk") 
echo ${todolist[@]}
echo
for i in {0..6}; do echo "$i: ${todolist[i]}"; done; echo

# if-statements
declare -i a=3
if [[ $a -gt 4 ]]; then
	echo "$a is greater than 4."
elif [[ $a > 2 ]]; then
	echo "$a is greater than 2."
else
	echo "$a is not greater than 4."
fi

#LOOPS

#1 while-loop
echo -e "\nWhile Loop"
declare -i n=0
while (( n < 3 ))
do
	echo "n:$n"
	(( n++ ))
done

#2 until-loop
echo -e "\nUntil Loop"
declare -i m=0
until (( m == 3 ))
do
	echo "m:$m"
	(( m++ ))
	#sleep 1 #<-wait 1 sec
done

#3 for-loop
echo -e "\nFor Loop"
# version 1:
for i in 1 2 3 
do
	echo $i
done

# version 1, ale w jednej linii:
for i in 1 2 3; do echo $i; done

# version 2:
for i in {1..3}
do
	echo $i
done

# version 3:
for (( i=1; i<=3; i++ ))
do
	echo $i
done

# version 4: "taki forEach"
declare -a fruits=("apple" "banana" "cherry")
for i in ${fruits[@]}
do
	echo "Today's fruit is: $i"
done

# version 4, ale korzystający z listy systemowej ls
for i in $(ls)
do
	echo "Found a file: $i"
done
echo

# Case
animal="dog"
case $animal in
	cat) echo "Feline";;
	dog|puppy) echo "Canine";;
	*) echo "No match!"
esac
echo

# functions

greet() {
	echo -e "Hi there, $1. What a nice $2\n"
}
greet Bolek Morning
greet Scott Evening

numberthing () {
	declare -i i=0
	for f in $@; do
		echo "$i: $f"
		(( i++ ))	
	done
	echo -e "Name of this function: $FUNCNAME.\n"
}

numberthing raz dwa trzy cztery
numberthing $(ls .)
