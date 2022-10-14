FROM openjdk:8-jdk-slim AS BUILD
COPY Main.java /
RUN javac Main.java

FROM openjdk:8-jre-slim
COPY --from=BUILD Main.class /
ENTRYPOINT java Main