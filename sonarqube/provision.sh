#/usr/bin/env bash
apt-get update && apt-get install -y wget zip openjdk-7-jdk

#remove old files
rm -fr sonarqube-5.1.zip
rm -fr sonar-runner-dist-2.4.zip
rm -fr sonarqube-5.1
rm -fr sonar-runner-dist-2.4

#download
wget http://dist.sonar.codehaus.org/sonarqube-5.1.zip
wget http://repo1.maven.org/maven2/org/codehaus/sonar/runner/sonar-runner-dist/2.4/sonar-runner-dist-2.4.zip
#wget https://github.com/SonarSource/sonar-examples/archive/master.zip

#unzip
unzip -o sonarqube-5.1.zip
unzip -o sonar-runner-dist-2.4.zip
#unzip master.zip

#INSTALL MYSQL
echo "mysql-server-5.5 mysql-server/root_password password root" | debconf-set-selections
echo "mysql-server-5.5 mysql-server/root_password_again password root" | debconf-set-selections
apt-get install -y mysql-server
mysql -u root -proot < /vagrant/create_database.sql
