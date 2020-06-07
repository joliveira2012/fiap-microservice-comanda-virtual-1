FROM openjdk:8

ARG PROFILE

ARG ADDITIONAL_OPTS

ENV PROFILE=${PROFILE}

ENV ADDITIONAL_OPTS=${ADDITIONAL_OPTS}

WORKDIR /opt/fiap-microservice-comanda-virtual

COPY /arquivo_bin/ecommerce*.jar fiap-microservice-comanda-virtual.jar

SHELL ["/bin/sh", "-c"]

EXPOSE 5005
EXPOSE 8080

CMD java ${ADDITIONAL_OPTS} -jar fiap-microservice-comanda-virtual.jar --spring.profiles.active=${PROFILE}

