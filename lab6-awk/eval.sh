#!/bin/bash

#+++++++++++++++++++++++++++++++++++++++++++
# Evaluate the lab6 of CS699, 2015
#
# 	Author	: Arun Babu
#	Date	: 27/08/15 
#
#+++++++++++++++++++++++++++++++++++++++++++

OUTPUT_COMMENTS_FILE='comments.txt'
truncate --size=0 $OUTPUT_COMMENTS_FILE

TMP_DIR=/tmp/cs699
#Create a temporary directory
mkdir -p $TMP_DIR

SCRIPTS=("csv2txt"
	"txtsplitter"
	"formatter"
	"txt2texSimple"
	"txt2texWithChapters"
	"html2tex"
	"txt2texAdvanced"
	"grader"
	)
ASSOC_FILES=("csv2txt.awk"
	"txtsplitter.awk"
	"formatter.awk"
	"txt2texSimple.awk"
	"txt2texWithChapters.awk"
	"html2tex.awk"
	"txt2texAdvanced.awk"
	"grader.awk"
	)
CUR_DIR=$PWD # Save current directory fr future use

echo "Checking submissions one by one:"
for submission in *.tar.gz;
do
	
	STUD_DIR=${submission%%.*}

	echo -e "$STUD_DIR"
	
	cp $submission $TMP_DIR/ &>> /dev/null
	pushd $TMP_DIR/ >> /dev/null
	tar zxf $submission &>> /dev/null
	rm $submission >> /dev/null

	# If folder structure is wrong, ie file are in the root
	if [ -f 'csv2txt' ] || [ -f 'txtsplitter' ] || [ -f 'formatter' ]; then
		#Create a new dir with required format and move it
		mkdir -p $STUD_DIR
		mv * ./$STUD_DIR &>> /dev/null
	fi
	popd >> /dev/null

	if [ ! -d $TMP_DIR/$STUD_DIR ]; then
		echo "  ├──>> Folder name $STUD_DIR doesn't exist!"

		echo "────────────────────────────────────────────────────" >> $CUR_DIR/$OUTPUT_COMMENTS_FILE
		echo "Student: $STUD_DIR" >> $CUR_DIR/$OUTPUT_COMMENTS_FILE
		echo "────────────────────────────────────────────────────" >> $CUR_DIR/$OUTPUT_COMMENTS_FILE
		echo "No folder found with name '$STUD_DIR' in your archive" >> $CUR_DIR/$OUTPUT_COMMENTS_FILE
		echo -e "────────────────────────────────────────────────────\n\n" >> $CUR_DIR/$OUTPUT_COMMENTS_FILE
		continue
	fi

	# Goto student directory
	pushd $TMP_DIR/$STUD_DIR/ >> /dev/null

	for QUES in {0..7};
	do
		# -------------------------------------------------------

		# echo -e " ├── Testing Question: $QUES"

		# Get script name and associated files from array
		SCRIPT=${SCRIPTS[$QUES]} 
		ASSOC_FILE=${ASSOC_FILES[$QUES]} 

		#Check if attempted
		if [ ! -f $SCRIPT ]; then
			echo -e "  ├──>> Script of $QUES, $SCRIPT doesn't exist!"

			echo "────────────────────────────────────────────────────" >> $CUR_DIR/$OUTPUT_COMMENTS_FILE
			echo "Student: $STUD_DIR, Question: $QUES, Testcase: $TEST_SCRIPT" >> $CUR_DIR/$OUTPUT_COMMENTS_FILE
			echo "────────────────────────────────────────────────────" >> $CUR_DIR/$OUTPUT_COMMENTS_FILE
			echo "No script found with name '$SCRIPT'" >> $CUR_DIR/$OUTPUT_COMMENTS_FILE
			echo "Note: You are not supposed to have .sh extension for script." >> $CUR_DIR/$OUTPUT_COMMENTS_FILE
			echo -e "────────────────────────────────────────────────────\n\n" >> $CUR_DIR/$OUTPUT_COMMENTS_FILE

			popd >> /dev/null # Go back to stud dir
			continue
		fi

		#Copy student script and associated files
		mkdir -p $TMP_DIR/testarea/$QUES/
		cp $SCRIPT $TMP_DIR/testarea/$QUES/
		cp $ASSOC_FILE $TMP_DIR/testarea/$QUES/
		chmod +x $TMP_DIR/testarea/$QUES/$SCRIPT

		#Copy testcases (inputs and outputs)
		cp $CUR_DIR/testcases/$QUES/* $TMP_DIR/testarea/$QUES/ 2> /dev/null

		if [ $? -ne 0 ]; then
			# No test case
			echo -e "  ├──>> No test cases for $QUES!"
			popd >> /dev/null #Go back to stud dir
			continue
		fi

		# Goto test area for actual testing
		pushd $TMP_DIR/testarea/$QUES/ >> /dev/null

		# For each testcase
		for TEST_SCRIPT in test*.sh;
		do
			# execute
			chmod +x $TEST_SCRIPT

			# Each test case script should return "expected-output-filename actual-output-filename" (seperated by space)
			# echo -e " │ ├── Running $TEST_SCRIPT .."
			TEST_OUTPUT=$(./$TEST_SCRIPT)

			EXPECTED=${TEST_OUTPUT%% *}
			ACTUAL=${TEST_OUTPUT##* }

			if [ -z $EXPECTED ] || [ -z $ACTUAL ]; then
				echo -e "  ├──>> Wrong output format from test script ($TEST_SCRIPT)."
				echo -e "  ├──>> Please output 'expected-output-filename actual-output-filename'"
				continue
			fi

			# perform diff
			diff -Z -q $EXPECTED $ACTUAL &>> /dev/null

			if [ $? -ne 0 ]; then
				echo -e "  ├── Q$QUES - $QUES_$TEST_SCRIPT - FAIL"

				echo "────────────────────────────────────────────────────" >> $CUR_DIR/$OUTPUT_COMMENTS_FILE
				echo "Student: $STUD_DIR, Question: $QUES, Testcase: $TEST_SCRIPT" >> $CUR_DIR/$OUTPUT_COMMENTS_FILE
				echo "Command: diff expected_output $ACTUAL" >> $CUR_DIR/$OUTPUT_COMMENTS_FILE
				echo "────────────────────────────────────────────────────" >> $CUR_DIR/$OUTPUT_COMMENTS_FILE
				diff -Z $EXPECTED $ACTUAL &>> $CUR_DIR/$OUTPUT_COMMENTS_FILE

				ERRS=$(cat eval_out.txt 2> /dev/null)
				if [ ${#ERRS} -gt 3 ]; then
					# Non empty eval_out.txt
					echo "────────────────────────────────────────────────────" >> $CUR_DIR/$OUTPUT_COMMENTS_FILE
					echo "Errors/output from your program: " >> $CUR_DIR/$OUTPUT_COMMENTS_FILE
					echo "────────────────────────────────────────────────────" >> $CUR_DIR/$OUTPUT_COMMENTS_FILE
					echo $ERRS >> $CUR_DIR/$OUTPUT_COMMENTS_FILE
				fi
				echo -e "────────────────────────────────────────────────────\n\n" >> $CUR_DIR/$OUTPUT_COMMENTS_FILE
			else
				echo -e "  ├── Q$QUES - $QUES_$TEST_SCRIPT - PASS"
			fi
		done # End for each test case
		# echo -e "  └── Done"
		popd >> /dev/null # Get out of test area
		#----------------------------------------------------------

	done # End for each question

	popd >> /dev/null # Go back to check next submission
	rm -rf $TMP_DIR/* # Remove everything inside

done # End for each submission

echo "Checked all submissions"