FROM adoptopenjdk/openjdk15
ARG JAR_FILE=demo-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-XX:+UseContainerSupport", "-XX:+UseZGC", "-XX:GCTimeRatio=19", "-XX:MetaspaceSize=10M", "-Xms100m", "-Xmx3G", "-XX:SoftMaxHeapSize=1G", "-XX:+UnlockExpermentalVMOptions", "-XX:MaxMetaspaceSize=180M", "-XX:CompressedClassSpaceSize=50M", "-jar", "/app.jar"]