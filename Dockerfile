FROM ubuntu:20.04

LABEL repository="https://github.com/dependency-check/Dependency-Check_Action" \
      homepage="https://github.com/dependency-check/Dependency-Check_Action" \
      maintainer="javixeneize" \
      com.github.actions.name="Dependency Check" \
      com.github.actions.description="Github action to execute dependency check as part of a github workflow" \
      com.github.actions.icon="shield" \
      com.github.actions.color="red"

USER root 
RUN apt-get update; apt-get install wget -y \ 
    && apt-get install unzip -y  \ 
    && wget https://github.com/jeremylong/DependencyCheck/releases/download/v6.2.2/dependency-check-6.2.2-release.zip -P /tmp\
    && unzip /tmp/dependency-check-6.2.2-release.zip \
    && apt-get install openjdk-11-jdk -y \
    && export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
