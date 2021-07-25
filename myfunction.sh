
#!/usr/bin/env bash


# game

echo -e "\tWelcome to the Motivation-Generator"


declare -a motivator=(
	"You're the best!"
	"I love you, man!"
	"You can do it!"
	"Keep doing what you're doing!"
	"Good job!"
)

printf "%s\n" "${motivator[@]}"
echo


declare -i n=0
while  (( n < 10 ))
do
	randnumber=$(( $RANDOM % 5 ))
	echo "Your line for today is: ... ($randnumber) ${motivator[randnumber]}"
	(( n++ ))
done

: '
for i in 1 2 3 4 5
do
	echo "This is line today $i" >> ./textfile.txt
done


declare -i i=1
while read f
	do echo "Line $i: $f"
	(( i++ ))
done < ./textfile.txt

'















: '  #MOJE NOTATKI:
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
'

#3 for-loop
#echo -e "\nFor Loop"

# version 1, ale w jednej linii:
#for i in 1 2 3; do echo $i; done

# version 2:
#for i in {1..3}; do echo $i; done

# version 3:
#for (( i=1; i<=3; i++ )); do echo $i; done


# version 4: "taki forEach"
declare -a fruits=("apple" "banana" "cherry")
#for i in ${fruits[@]}
#do
#	echo "Today's fruit is: $i"
#done

: '
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

'


