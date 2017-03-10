Docker for Opendaylight Developement

# Build

~~~
docker build -t opendaylight-docker:latest .
~~~

# Usage

Launch the docker
~~~
docker run -t -i --rm \
           -v $(YOUR_PROJECT_DIR):/opendaylight/$(PROJECT_NAME) \
           opendaylight-docker:latest
~~~

Build your project
~~~
root# cd /opendaylight/$(PROJECT_NAME)
root# mvn -s /opendaylight/.m2/settings.xml clean install
~~~
