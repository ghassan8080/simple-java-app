FROM ubuntu
RUN apt-get update -qy && apt-get install openjdk-8-jdk -qy &&\
apt-get install openssh-server -qy && apt-get install -qy maven

RUN apt-get install -qy git && sed -i 's|session    required   pam_loginuid.so|session    optional   pam_loginuid.so|' /etc/pam.d/sshd &&\
mkdir -p /var/run/sshd

RUN useradd -ms /bin/bash jenkins --home /home/jenkins && echo "jenkins:jenkins" | chpasswd
EXPOSE 22
CMD ["/usr/sbin/sshd","-D"]