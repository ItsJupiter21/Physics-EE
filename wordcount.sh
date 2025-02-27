
# Get the word count number
number=$(grep texcount EE.tex | grep 'Words in text' | grep -o '[0-9]*')

# Use sed to replace the line in EE.tex
sed -i "s/          Word Count:.*/          Word Count:${number}/g" EE.tex

echo "Word count updated in EE.tex to: ${number}
