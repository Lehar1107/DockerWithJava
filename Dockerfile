FROM openjdk:11
#my working diresctory create kri hai
WORKDIR /usr/src/myapp
#current folder ki saari cheeze copy krenge . meaning
COPY . /usr/src/myapp/
#compile kiya
RUN javac Test.java
CMD ["java","Test"]
