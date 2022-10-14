FROM openjdk:20-jdk

COPY Main.java /

RUN javac Main.java

ENTRYPOINT java Main