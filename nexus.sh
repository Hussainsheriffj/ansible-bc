apt update
apt install openjdk-8-jre-headless
apt install net-tools

cd /opt
wget https://download.sonatype.com/nexus/3/nexus-3.53.1-02-unix.tar.gz
tar -zxvf latest-unix.tar.gz

adduser nexus
chown -R nexus:nexus nexus-3.53.1-02
chown -R nexus:nexus sonatype-work

vim nexus-3.53.1-02/bin/nexus.rc
run_as_user="nexus"

su - nexus
/opt/nexus-3.53.1-02/bin/nexus start

ps aux | grep nexus
netstat -lnpt