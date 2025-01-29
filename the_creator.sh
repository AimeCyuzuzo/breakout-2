#!/bin/bash


DIRECTORY="students_directory"

if [ ! -d "$DIRECTORY" ]; then
	echo "Creating $DIRECTORY"
	mkdir "$DIRECTORY"
else 
	echo "$DIRECTORY already exists"
fi

COHORTS=("cohort-7.txt" "cohort-6.txt" "cohort-5.txt")

for FILE in "${COHORTS[@]}"; do
	touch "$DIRECTORY/$FILE"
	echo "$FILE created inside $DIRECTORY"
done

NAMES=("Alice" "Aime" "Cyuzuzo")

for i in $(seq 5 7); do
	FILE="$DIRECTORY/cohort-$i.txt"
	
	for ((j = 0; j < ${#NAMES[@]}; j++)); do
		echo "${NAMES[j]}" >> "$FILE"
	done

	echo "Contents of $FILE"
	cat "$FILE"
	echo "........"
done
