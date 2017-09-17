## Spark-Java POC

This is a POC for [Spark-Java](http://sparkjava.com) using [Kotlin](https://kotlinlang.org/) for development.

In addition:

1. It supports deployment to [Linode](https://www.linode.com) using [Nanobox](https://nanobox.io) - #WIP (Issues with nanobox java engine)
2. It supports deployment to [Linode](https://www.linode.com) using [Docker](https://www.docker.com/)
3. Maven for dependency and build management

#### Pre-requisites:
1. Java v1.8
2. Maven v3.5.x
3. Kotlin v1.1.4
4. nanobox
5. Docker


#### Building the application
> mvn clean install

#### Running the micro-service
> java -jar target/spark-java-poc-1.0-SNAPSHOT-jar-with-dependencies.jar

#### Hello from spark-java-poc
After running the project, execute
> curl localhost:4567/hello

#### Building the docker image
After building the project, from the root of project, execute:
> docker build -t singals/spark-java-poc .

#### Running the docker image
Sanitizing your host machine (Removing older versions of the app)
> docker stop my-poc

> docker rm my-poc

> docker rmi singals/spark-java-poc

After building the docker image(if you have any local change) or directly(if you don't have any local change) execute:
> docker run -d -p 80:4567 --name my-poc singals/spark-java-poc

Testing the image
> curl localhost/hello

#### Deploying using nanobox(#wip):
Make sure that the project is built successfully
> nanobox run

> nanobox java -jar target/spark-java-poc-1.0-SNAPSHOT-jar-with-dependencies.jar

##### TODOs
1. Make nanobox deployment for
    1. Development environment
    2. Linode (for Prod)