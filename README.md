# Multi Stage Docker For Java

##	Code Structure:
* gradlew, gradlew.bat: Used for Gradle Installation and building Java Applications
* settings.gradle, gradle/ : Include Gradle Settings
* Dockerfile: Multi-stage dockerfile for Java Application.
* src/: Java Hello-World Application for which multistage docker is created. 
* build.gradle: Settings for building Java Application

## Application Description:
* For a Hello World Java Application, Multi-Stage Docker is created.
* Docker file consists of below two stages:
  1.	Build Stage: In this stage Java Development Tool: Gradle is installed and Java Application is compiled using Gradle. 
  2.	Run Stage: In this stage Java Application is executed using JRE.
* Using Multi Stage Docker results in: Image size reduction and avoid unnecessary caching of layers.
