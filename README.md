# docker-testdrive
Docker container to run e2e and unit tests on standardized environments

## To build the container
* docker build --force-rm -t testdrive .

## To run container
* docker run --name test1 -v $PWD/web:/var/www/ -d testdrive