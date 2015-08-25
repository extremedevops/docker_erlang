# Erlang / OTP

Erlang is a programming language used to build massively scalable soft real-time systems with requirements on high availability. Some of its uses are in telecoms, banking, e-commerce, computer telephony and instant messaging. Erlang's runtime system has built-in support for concurrency, distribution and fault tolerance. And OTP is set of Erlang libraries and design principles providing middle-ware to develop these systems. It includes its own distributed database, applications to interface towards other languages, debugging and release handling tools.

For more information visit the [erlang website](http://www.erlang.org/)

## About this image

This image is based on [debian squeeze, wheezy or jessie](https://hub.docker.com/_/debian/) depending on the version of erlang selected and has integrated the repos and packages from [Erlang Solutions](https://www.erlang-solutions.com) which are the recommended by the erlang community for a simple installation of erlang on almost any linux distro. Using different tags you can select almost any version of erlang from R13B04 up to OTP 18.0.

### Simple start
One of the most simple ways to start is to run for example:
```bash
$ docker run -ti extremedevops/erlang:R13B04
```
This will automatically send you to an [erl](http://www.erlang.org/doc/man/erl.html) cli console using the version specified in the corresponding tag, in this case R13B04.

## Feedback

Please report any issue or suggestion [here](https://github.com/extremedevops/docker_erlang/issues)
