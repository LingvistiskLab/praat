# This script traverses a tier and outputs the label and duration of each interval to a .txt-file
# The script can easily be modified to output other info
#
#	instruction:
#	1. save the script in a folder (else praat will fail to create a txt-file)
#	2. open a textgrid in "view and edit" mode
#	3. choose "open editor script" from the file menu in the textgrid editor
#	4. point at the first interval of the tier of interest
#	5. run the script
#	6. open the list.txt file that is now created in the same folder as the script
#

count = 0
repeat
	count = count + 1
	Select next interval
	label$ = Get label of interval
	start = Get start of selection
	end = Get end of selection
	duration = 'end' - 'start'
	appendFile: "list.txt", count, ";", label$, ";", duration, newline$
until 'start' = 0

