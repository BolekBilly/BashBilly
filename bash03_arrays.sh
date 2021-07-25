
#!/usr/bin/env bash

# create array
declare -a snacks=("apple" "banana" "orange")

#take element
echo "The 3rd element is:  ${snacks[2]}"

# add elements
snacks[5]="grapes"
snacks+=("mango") # brackets here are important!

# see all elements
echo ${snacks[@]}

# or in loop
for i in {0..6}; do
	echo "$i: ${snacks[$i]}"
done

echo

declare -A office
office[city]="San Frnacisco"
office[building]="HQ West"
echo ${office[building]} is in ${office[city]}

