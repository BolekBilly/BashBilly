
#!/usr/bin/env bash

read -ep "Favorite color? " -i "Blue" favcolor
echo $favcolor

read -p "Favorite animal? [cat] " favan
while [[ -z $favan ]]
do
	favan="cat"
done

echo "$favan was selected."

read -p "What year it is now? [nnnn]" year
until [[ $year =~ [0-9]{4} ]]; do
	read -p "A year, please! [nnnn]" year
done
echo "So, it is year $year - well, well, well!"
