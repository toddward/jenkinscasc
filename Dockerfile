FROM jenkins/jenkins:lts

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
ENV PASSWORD 'asdf1234!'
RUN /usr/local/bin/install-plugins.sh configuration-as-code mstest matrix-auth workflow-aggregator docker-workflow blueocean credentials-binding ldap
ENV CASC_JENKINS_CONFIG https://raw.githubusercontent.com/toddward/jenkinscasc/master/casc.yaml