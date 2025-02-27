
# Get the word count number
number=$(texcount EE.tex | grep 'Words in text'| grep -o '[0-9]*')

# Use sed to replace the line in EE.tex
sed -i "s/        Word Count:.*/        Word Count:${number}/g" EE.tex
echo ${number}
