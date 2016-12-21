# docker-eclipse

Eclipse Neon in a Docker container for X11 based graphic systems.

This project is a fork of, and therefore, it's based on, Fabio Rehm [eclipse-docker](https://github.com/fgrehm/docker-eclipse) project

## Requirements

* Docker 1.2+ (should work fine on 1.0+ but I haven't tried)
* An X11 socket

## Build the docker image
```sh
  ./build.sh
```
## Environment variables
Before startint the eclipse in a docker container, first is it necessary to set the environment variables:

* *ECLIPSE_WORKSPACE*: Eclipse workspace path in the host.
* *ECLIPSE_PLUGINS_DIRECTORY*: Directory to save the eclipse plugins and configuration. It's the *~/.eclipse* directory equivalent in the host.

## Starting the dockerized Eclipse
```sh
  ./start_eclipse.sh
```
## RHEL, CentOS and Fedora Core users
With this distributions it's necessary to launch the container in priveleged mode, adding *privileged: true* to the docker-compose.yml file

## Help! I started the container but I don't see the Eclipse screen
You might have an issue with the X11 socket permissions since the default user
used by the base image has an user and group ids set to `1000`, in that case
you can run either create your own base image with the appropriate ids or run
`xhost +` on your machine and try again.
