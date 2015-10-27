# docker-testdrive
Docker container to run e2e and unit tests on standardized environments

## What does this container include?
* NodeJS and a headless chrome for e2e tests

## What is this container for?
* Basicly it runs an npm install and calls gulp for tests

## To build the container
* docker build --force-rm -t testdrive .

## To run container
* docker run --name test1 -v $PWD/web:/var/www/ -d testdrive