FROM jenkins/jenkins:lts

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
COPY docker/images/jenkins/security.groovy /usr/share/jenkins/ref/init.groovy.d/security.groovy

RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
