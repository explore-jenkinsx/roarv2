FROM openjdk:8-jdk-slim
ENV PORT 8080
EXPOSE 8080
COPY web/build/libs/*.war /opt/app.war
WORKDIR /opt
CMD ["java", "-XX:+UnlockExperimentalVMOptions", "-XX:+UseCGroupMemoryLimitForHeap", "-jar", "app.war"]
