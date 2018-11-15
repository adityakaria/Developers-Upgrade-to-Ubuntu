#!/bin/bash

# main update of Ubuntu
# Check of existing system version pending...
#echo 'APT::Get::Assume-Yes;' | sudo tee -a /etc/apt/apt.conf.d/00Do-not-ask #assumes yes for yes/no questions
echo "Welcome to UNIX Developer Setup"
echo "Enter 1 if you want to update to Ubuntu 18.04 LTS version"
echo "Enter 2 if you want to install packages and softwares used in development"
read n
if [[ $n == 1 ]]
then
    if [[ `lsb_release -r | cut -f 2` == 18.04 ]]
    then
        echo "You already have Ubuntu 18.04 LTS version installed. You will be redirected to the software/package installation feature."
        n=2
    else
        echo "Your system will be updated to Ubuntu 18.04 version, along with an option for a developers upgrade!"
        echo "You will be guided by onscreen instructions..."
        echo "Please enter your admin (sudo) password: "
        sudo apt-get -y update
        # {sudo password}
        sudo apt-get -y upgrade
        sudo apt-get -y dist-upgrade
        sudo do-release-upgrade
        # {Enter}
        # {y}
        # {Enter}
        # (Removing the packages part){y}
        # (System restart required){y}
    fi
fi

#installing utilities...
if [[ $n == 2 ]]
then
    i=1
     
while [[ $i != 0 ]]
do
    echo "Enter the choice of the softwares/packages you want to install. Enter 0 to exit."
    echo "1. Python"
    echo "2. pip3"
    echo "3. Numpy"
    echo "4. Django"
    echo "5. VS Code"
    echo "6. Google Chrome"
    echo "7. Pandas"
    echo "8. Atom IDE"
    echo "9. JavaScript"
    echo "10.Tkinter"
    echo "11.Java"
    echo "12.Docker"
    echo "13.Git"
    echo "14.Anaconda"
    echo "15.Sublime Text"
    echo "16.Slack"
    echo "0. To Exit Setup Wizard"
    read i
    case $i in
        0)
            echo "Thank You"
            ;;

        1) 
            # python2:
            sudo apt install python-minimal
            python --version
            
            # python3:
            sudo apt update
            sudo apt -y upgrade
            sudo apt install -y python3-venv
            update-alternatives --install /usr/bin/python python /usr/bin/python3 1 #sets python3 as default python
            ;;

        2)
            # pip:
            sudo apt install python3-pip -y
            #which pip3	#creates a sym link of pip for pip3
            #ln -s /usr/bin/pip3 /usr/bin/pip
            pip3 install --upgrade pip3
            ;;

        3)
            # Numpy:
            sudo apt install python-numpy
            # {Y}
            ;;

        4)    
            # Django:
            pip install Django==2.1.3
            ;;
        
        5)     
            # VS Code:
            sudo apt install curl
            curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
            sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
            sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
            sudo apt-get -y install apt-transport-https
            sudo apt-get -y update
            sudo apt-get -y install code
            ;;

        6)
            #google-chrome:
            wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
            sudo dpkg -i ./google-chrome*.deb
            sudo apt-get -y install -f
            ;;

        7)
            #pandas
            pip install pandas --user
            ;;

        8)
            #atom ide
            sudo add-apt-repository ppa:webupd8team/atom
            sudo apt update
            sudo apt install atom
            ;;

        9)
            #javascript
            sudo apt install rhino
            ;;
        
        10)
            # tkinter:
            sudo apt-get -y update
            sudo apt-get -y install python3-tk
            ;;

        11)    
            # java: 
            java -version
            //default openjdk 10/11
            sudo apt install default-jre
            sudo apt install default-jdk
            # ----//to install open jdk8
            # sudo apt install openjdk-8-jdk
            # ----//oracle jdk
            # sudo add-apt-repository ppa:webupd8team/java
            # sudo apt update
            # sudo apt install oracle-java8-installer
            # ----//To check if other versions of java jdk are installed
            # sudo update-alternatives --config java
            # (1)- OpenJDK 11 is located at /usr/lib/jvm/java-11-openjdk-amd64/bin/java.
            # (2)- OpenJDK 8 is located at /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java.
            # (3)- Oracle Java 8 is located at /usr/lib/jvm/java-8-oracle/jre/bin/java.
            javapath="/usr/lib/jvm/java-11-openjdk-amd64/bin/java"
            echo JAVA_HOME="$javapath" >> /etc/environment
            source /etc/environment
            ;;

        12)    
            # Docker:
            sudo apt update
            sudo apt install apt-transport-https ca-certificates curl software-properties-common
            curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
            sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
            sudo apt update
            apt-cache policy docker-ce
            sudo apt install docker-ce
            sudo systemctl status docker
            ;;

        13)
            # git:
            sudo apt update
            sudo apt instal git
            echo "Do you wish to set up your Git ID right now? (y/n)"
            read answer
            # To set up username and ID permanently
            if [ $answer -eq 'y' ]
            then
                echo "Setting up Git.."
                echo "Enter your Git handle (username): "
                read name
                echo "Enter your Git registered Email ID: "
                read mail
                git config --global user.name "$name"
                git config --global user.email "$mail"
            fi
            ;;

        14)
            # anaconda:
            sudo killall apt apt-get
            sudo apt install curl
            cd /tmp
            curl -O https://repo.anaconda.com/archive/Anaconda3-5.2.0-Linux-x86_64.sh
            bash Anaconda3-5.2.0-Linux-x86_64.sh
            # {press enter}
            # {yes}
            # {yes}
            # {yes/no for installation of VS Code}
            cd ~
            source ~/.bashrc
            # //conda info (to verify installation)
            ;;

        15)
            # Sublime-text
            # sudo apt-get -y update
            # sudo apt-get -y install sublime-text
            # ;;
            wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
            sudo apt-add-repository "deb https://download.sublimetext.com/ apt/stable/"
            sudo apt install sublime-text
            ;;

        16)
            #slack
            sudo apt install snapd
            sudo snap install slack --classic
            ;;
        
        *) echo "Invalid choice. Please enter a valid choice."
            ;;
    esac
done 
fi

# #Gmail:
# sudo apt-get -y install msmtp-mta
# touch ~/.msmtprc
# echo "enter your gmail address"
# read add
# echo " enter your password"
# read pass
# cat f1msm.txt > ~/.msmtprc
# sed -i "s/<pass>/$pass/1" ~/.msmtprc
# sed -i "s/<mail.com>/$add/g" ~/.msmtprc
# chmod 600 ~/.msmtprc
# sudo apt-get -y install mailutils
# sudo apt install yum
# sudo yum install mailx
# sudo dpkg-reconfigure postfix
# touch ~/.mailrc
# echo 'set sendmail="/usr/bin/msmtp"
# set message-sendmail-extra-arguments="-a gmail"' > ~/.mailrc
# echo "done with the gmail set up :))"[]
# echo -e 'to send the mail ,use the command \n mail -s "subject" "attachments " "sender@gmail.com" '