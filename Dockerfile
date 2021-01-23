FROM openjdk:11
COPY target/service-discovery-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8761
ENV EUREKA_SERVER=service-discovery
VOLUME [ "/DockerWorkspace" ]
ENTRYPOINT ["java","-jar","/DockerWorkspace/service-discovery/target/service-discovery-0.0.1-SNAPSHOT.jar"]