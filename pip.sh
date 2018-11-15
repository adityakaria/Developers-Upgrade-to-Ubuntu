#!bin\bash
pip3 list > newfile
cat newfile

echo "enter the package you want to install and enter 'stop' to stop"
read w
if [ $w = "stop" ]
then
echo "stopped"
exit
else
word=`grep -i "$w" newfile| cut -d " " -f 1`
echo $word
 pip3 install --upgrade $word
echo "installation compeleted"
fi