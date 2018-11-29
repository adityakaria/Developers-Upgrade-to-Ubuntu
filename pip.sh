#!bin\bash
pip3 list > newfile
cat newfile


echo "Enter the package you want to install from the list displayed: "
read w
word=`grep -i "$w" newfile| cut -d " " -f 1`
pip3 install --upgrade $word
echo "Installation Compeleted"
