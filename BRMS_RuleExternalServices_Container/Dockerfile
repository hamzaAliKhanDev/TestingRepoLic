FROM localhost/ngoneruleexternalfuncservices:2024.2-custom-jdk17
LABEL maintainer="Newgen Software Technologies Limited"

# Installing BRMS Microservices
COPY --chown=docker:newgen artifacts $CATALINA_HOME/

EXPOSE 8080

#Switch to user: docker
USER 1000

WORKDIR $CATALINA_HOME
CMD /bin/run.sh