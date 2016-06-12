FROM ubuntu:xenial

MAINTAINER getumen <>
ENV DEBIAN_FRONTEND noninteractive

RUN echo "deb http://jp.archive.ubuntu.com/ubuntu/ xenial main restricted\
deb-src http://jp.archive.ubuntu.com/ubuntu/ xenial main restricted\
deb http://jp.archive.ubuntu.com/ubuntu/ xenial-updates main restricted\
deb-src http://jp.archive.ubuntu.com/ubuntu/ xenial-updates main restricted\
deb http://jp.archive.ubuntu.com/ubuntu/ xenial universe\
deb-src http://jp.archive.ubuntu.com/ubuntu/ xenial universe\
deb http://jp.archive.ubuntu.com/ubuntu/ xenial-updates universe\
deb-src http://jp.archive.ubuntu.com/ubuntu/ xenial-updates universe\
deb http://jp.archive.ubuntu.com/ubuntu/ xenial multiverse\
deb-src http://jp.archive.ubuntu.com/ubuntu/ xenial multiverse\
deb http://jp.archive.ubuntu.com/ubuntu/ xenial-updates multiverse\
deb-src http://jp.archive.ubuntu.com/ubuntu/ xenial-updates multiverse\
deb http://jp.archive.ubuntu.com/ubuntu/ xenial-backports main restricted universe multiverse\
deb-src http://jp.archive.ubuntu.com/ubuntu/ xenial-backports main restricted universe multiverse\
deb http://security.ubuntu.com/ubuntu xenial-security main restricted\
deb-src http://security.ubuntu.com/ubuntu xenial-security main restricted\
deb http://security.ubuntu.com/ubuntu xenial-security universe\
deb-src http://security.ubuntu.com/ubuntu xenial-security universe\
deb http://security.ubuntu.com/ubuntu xenial-security multiverse\
deb-src http://security.ubuntu.com/ubuntu xenial-security multiverse"> /etc/apt/sources.list


RUN apt-get update -q
RUN apt-get install -qy texlive texlive-fonts-recommended texlive-full texlive-generic-extra texlive-lang-all texlive-lang-japanese texlive-latex-extra texlive-latex-recommended texlive-math-extra texlive-science

WORKDIR /data
VOLUME ["/data"]
