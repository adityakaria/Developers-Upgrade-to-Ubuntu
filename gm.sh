sudo apt-get install msmtp-mta
touch ~/.msmtprc
echo "enter your gmail address"
read add
echo " enter your password"
read pass
cat f1msm.txt > ~/.msmtprc
sed -i "s/<pass>/$pass/1" ~/.msmtprc
sed -i "s/<mail.com>/$add/g" ~/.msmtprc
chmod 600 ~/.msmtprc
sudo apt-get install mailutils
sudo apt install yum
sudo yum install mailx
sudo dpkg-reconfigure postfix
touch ~/.mailrc
echo 'set sendmail="/usr/bin/msmtp"
set message-sendmail-extra-arguments="-a gmail"' > ~/.mailrc
echo "done with the gmail set up :))"
echo -e 'to send the mail ,use the command \n mail -s "subject" "attachments " "sender@gmail.com" '