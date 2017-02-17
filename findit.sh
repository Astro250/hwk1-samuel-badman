#/bin/bash

# Here's the first line of code to write to do the first homework assignment.
#
# In /scratch2/scratchdirs/nugent/astro250/hwk1 we have a set of fits files as well as catalogs
# from these fits files. They are named the same save for the suffix (.fits or .cat). 
# Some of the .cat files are missing. Write a bash shell script which takes as input 
# the directory name and prints out the names of the .fits files which are missing their 
# corresponding .cat files. If the directory does not exist, the code should print
# out an error statement accordingly.
#

dir=$1

#First, check input directory (argument 1 on command line) is a true directory.

if [ ! -d $dir ]; then
	echo "Error: $dir is not a directory, please enter a correct directory as the second argument in the command line call."
else
	echo "Searching $dir for files ending .fits without corresponding .cat files:"
	echo " "

#If so, for each .fits file in the inputted directory, see if the filename with .cat replacing 
# .fits is a file which exists in this directory. If so, print out it's name (filename only),
# stripping off the path name.

	for f in $dir*.fits; do
		nf="${f%.*}.cat"
		if [ ! -e "$nf" ]; then
			echo "Filename: $(basename $f)"
		fi
	done
fi

