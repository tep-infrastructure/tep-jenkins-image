FROM jenkins/jenkins:lts

LABEL org.opencontainers.image.source https://github.com/tep-infrastructure/tep-jenkins-image

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
ENV PLUGINS_FORCE_UPGRADE=true

COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt

COPY --chown=jenkins:jenkins config/ /usr/share/jenkins/casc_config/

# code as config. https://github.com/jenkinsci/configuration-as-code-plugin/#getting-started
ENV CASC_JENKINS_CONFIG=/usr/share/jenkins/casc_config
