#/usr/bin/env bash

wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key|apt-key add -
sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
apt-get update && apt-get install -y jenkins

java -jar /usr/share/jenkins/jenkins.war &
