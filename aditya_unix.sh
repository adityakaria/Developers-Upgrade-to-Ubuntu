tkinter:
    sudo apt-get update
    sudo apt-get install python3-tk

java: 
    java -version
    //default openjdk 10/11
    sudo apt install default-jre
    
    java -version

    sudo apt install default-jdk

    javac -version

    // to install open jdk8
    sudo apt install openjdk-8-jdk

    //oracle jdk
    sudo add-apt-repository ppa:webupd8team/java
    sudo apt update
    sudo apt install oracle-java8-installer



    sudo update-alternatives --config java

    -  OpenJDK 11 is located at /usr/lib/jvm/java-11-openjdk-amd64/bin/java.
    -  OpenJDK 8 is located at /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java.
    -  Oracle Java 8 is located at /usr/lib/jvm/java-8-oracle/jre/bin/java.


    javapath="/usr/lib/jvm/java-11-openjdk-amd64/bin/java
    echo JAVA_HOME="$javapath" >> /etc/environment

    source /etc/environment

Docker:
    sudo apt update
    sudo apt install apt-transport-https ca-certificates curl software-properties-common
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
    sudo apt update
    apt-cache policy docker-ce
    sudo apt install docker-ce
    sudo systemctl status docker

git:
    sudo apt update
    sudo apt instal git

    echo "Setting up Git.."
    echo "Enter your git name: "
    read name
    echo "Enter your git registered email: "
    read mail
    git config --global user.name "$name"
    git config --global user.email "$mail"

anaconda:
    cd /tmp
    curl -O https://repo.anaconda.com/archive/Anaconda3-5.2.0-Linux-x86_64.sh
    bash Anaconda3-5.2.0-Linux-x86_64.sh
    {press enter}
    {yes}
    {yes}
    {yes/no for installation of VS Code}
    source ~/.bashrc
    //conda info

