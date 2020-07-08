from bryandollery/maven-repo as build

COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package

from adoptopenjdk/openjdk11:alpine

copy --from=build home/app/target/person-service-1.0.0.jar / 
CMD ["java", "-jar", "person-service-1.0.0.jar"]

EXPOSE 8081
