
#!/usr/bin/env bash

echo "What is your name?"
read name

echo "What is your password?"
read -s pass

read -p "What is your favorite animal? " animal


echo "name: $name, pass: $pass, animal: $animal"


echo -e "\nWhat color do you like the most?"
select color in "red" "green" "blue" "quite"
do
	case $color in
		red) echo "Red - you are fire!";;
		green) echo "Green - you are friendly";;
		blue) echo "Blue - you are analitical";;
		quite) break;;
		*) echo "Wrong color, sir!";;
	esac
done


