FROM eclipse-temurin:25
WORKDIR /app
COPY . /app
RUN javac Hello.java
CMD ["java","Hello"]
