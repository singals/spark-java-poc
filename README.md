## Spark-Java POC

This is a POC for [Spark-Java](http://sparkjava.com) using [Kotlin](https://kotlinlang.org/) for development.

In addition:

1. It supports deployment to [Linode](https://www.linode.com) using [Nanobox](https://nanobox.io)
2. Maven for dependency and build management

#### Pre-requisites:
1. Java v1.8
2. Maven v3.5.x
3. Kotlin v1.1.4
4. nanobox


#### Building the application
> mvn clean install

#### Running the micro-service
> java -jar target/spark-java-poc-1.0-SNAPSHOT-jar-with-dependencies.jar

#### Hello from spark-java-poc
After running the project, execute
> curl localhost:4567/hello

#### Deploying the application

#### Deploying using nanobox(#wip):
> nanobox run

##### TODOs
1. Make nanobox deployment for
    1. Development environment
    2. Linode (for Prod)