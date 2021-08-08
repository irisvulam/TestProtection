#!/bin/bash
start java -jar -Dspring-boot.run.arguments=--server.port=38761 ./service-registry/target/service-registry-0.0.1-SNAPSHOT.jar &&

start java -jar -Dspring-boot.run.arguments=--server.port=38762 ./service-gateway/target/api-gateway-0.0.1-SNAPSHOT.jar && 

start java -jar -Dspring-boot.run.arguments=--server.port=38087 -Dspring.profiles.active=local ./svi-log-management-service-0.0.1-SNAPSHOT.jar && 

start java -jar -Dspring-boot.run.arguments=--server.port=38085 -Dspring.profiles.active=local ./svi-authentication-management-service-0.0.1-SNAPSHOT.jar &&

start java -jar -Dspring-boot.run.arguments=--server.port=38088 -Dspring.profiles.active=local ./svi-resource-management-service-0.0.1-SNAPSHOT.jar &&

start java -jar -Dspring-boot.run.arguments=--server.port=38089 -Dspring.profiles.active=local ./svi-data-ingestion-service-0.0.1-SNAPSHOT.jar &&

start java -jar -Dspring-boot.run.arguments=--server.port=38086 -Dspring.profiles.active=local ./svi-user-management-service-0.0.1-SNAPSHOT.jar &&

start java -jar -Dspring-boot.run.arguments=--server.port=38090 -Dspring.profiles.active=local ./svi-training-management-service-0.0.1-SNAPSHOT.jar &&

start java -jar -Dspring-boot.run.arguments=--server.port=38091 -Dspring.profiles.active=local ./svi-report-management-service-0.0.1-SNAPSHOT.jar