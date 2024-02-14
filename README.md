Run Java file and see the output using docker in powershell

Install Docker Desktop
Open Vs Code

Create DockerFile
	Code:			
        FROM openjdk:11
        #my working diresctory create kri hai
        WORKDIR /usr/src/myapp
        #current folder ki saari cheeze copy krenge . meaning
        COPY . /usr/src/myapp/
        #compile  kiya
        RUN javac Test.java
        CMD ["java","Test"]

Create Test.java File
  Code:
      import java.util.Properties;
      class Test {
            public static void print() {
            System.out.println("printing Java program started");
            Properties props = System.getProperties();
            System.out.println(props);
      }

      public static void main(String args[]) {
      System.out.println("Java program started");
      print();
      }
}

Put the file in the same folder

Run the Test.java file in Vs Code

Now Build the Jdk Container in DockerDesktop

Run these commands 
                  docker build -t java .
                  
[+] Building 4.9s (9/9) FINISHED                                                                         docker:default
 => [internal] load .dockerignore                                                                                  0.1s
 => => transferring context: 2B                                                                                    0.0s
 => [internal] load build definition from Dockerfile                                                               0.1s
 => => transferring dockerfile: 255B                                                                               0.0s
 => [internal] load metadata for docker.io/library/openjdk:11                                                      4.5s
 => [1/4] FROM docker.io/library/openjdk:11@sha256:99bac5bf83633e3c7399aed725c8415e7b569b54e03e4599e580fc9cdb7c21  0.0s
 => [internal] load build context                                                                                  0.0s
 => => transferring context: 61B                                                                                   0.0s
 => CACHED [2/4] WORKDIR /usr/src/myapp                                                                            0.0s
 => CACHED [3/4] COPY . /usr/src/myapp/                                                                            0.0s
 => CACHED [4/4] RUN javac Test.java                                                                               0.0s
 => => naming to docker.io/library/java                                                                            0.0s
View build details: docker-desktop://dashboard/build/default/default/ovp45h8a7is0y8kk1lsr4jg50

Check the your container is created
PS C:\Users\Lehar Agrawal\Desktop\java-project> docker images
REPOSITORY                                      TAG         IMAGE ID       CREATED        SIZE
java                                            latest      39736e1fb831   8 days ago     654MB
                 7.17.0      9c9fdad81115   2 years ago    888MB

Now run the container and see the output what message you have written in Test.java it will be shown
PS C:\Users\Lehar Agrawal\Desktop\java-project> docker run java
Java program started
Printing Java program started
{awt.toolkit=sun.awt.X11.XToolkit, java.specification.version=11
