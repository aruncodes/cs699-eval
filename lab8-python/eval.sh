#!/bin/bash

mkdir -p comments
mkdir -p errors

echo "Checking submissions one by one:"
for submission in submissions/*.t*gz;
do
	echo "$submission"
	mkdir -p forupload && tar zxf "$submission" -C ./forupload --strip-components 1
	cp -r tester/* forupload/
	chmod +x forupload/test.sh
	cd forupload

	STUDENT=${submission:12}
	OUTPUT_COMMENTS_FILE="$STUDENT"_comments.txt
	OUTPUT_ERRORS_FILE="$STUDENT"_errors.txt
	truncate --size=0 "$OUTPUT_COMMENTS_FILE"
	truncate --size=0 "$OUTPUT_ERRORS_FILE"

	for QUES in {1..10};
	do
		./test.sh $QUES >> "$OUTPUT_COMMENTS_FILE" 2>> "$OUTPUT_ERRORS_FILE"
	done

	cp *comments* ../comments/
	cp *errors* ../errors/

	cd ..

	rm -rf forupload
done # End for each submission
echo "Checked all submissions"
