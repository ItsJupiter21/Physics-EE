
# Get the word count number
number=$(pdftotext EE.pdf - | egrep -e '\w\w\w+' | iconv -f ISO-8859-15 -t UTF-8 | wc -w)


# Use sed to replace the line in EE.tex
sed -i "s/        Word Count:.*/        Word Count:${number}/g" EE.tex
echo ${number}
