# Stage 1 : Build Stage : Gradle is installed and Java Application is compiled using gradle
FROM openjdk:8 AS BUILD_IMAGE

ENV APP_HOME=/root/gradle/
WORKDIR $APP_HOME

# copying source code and gradle files
COPY . $APP_HOME/

# download dependencies and running gradle for build
RUN ./gradlew build  -x test --continue
RUN ./gradlew build



# Stage 2 : Java Application is executed
FROM openjdk:8-jre
WORKDIR /root/
COPY --from=BUILD_IMAGE /root/gradle/build/libs/hello-world-0.1.0.jar .
EXPOSE 8080
CMD ["java","-jar","hello-world-0.1.0.jar"]
