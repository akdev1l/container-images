FROM fedora:latest

RUN dnf install -y vim ripgrep binutils git python nc ansible openssh-clients
