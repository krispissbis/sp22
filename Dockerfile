FROM ubuntu:latest

RUN apt update
RUN apt install -y gcc gcc-multilib gdb nano

WORKDIR /tmp

COPY asm.s .
COPY c.c .
COPY test.s .

RUN gcc -m32 -no-pie asm.s -o asm
RUN gcc c.c -o c
RUN gcc -m32 -no-pie test.s -o test