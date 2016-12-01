# Programing the nRF51 with Ada

This project contains a simple boilerplate project for programming the nRF51 chip using Ada, which is an awesome programming language.
To build it, you need Gnat for ARM from AdaCore in you path. Also remember to check out the submodules, which contains drivers and the
nRF51 Ada runtime, using `git submodule update --init --recursive`. You can then run `arm-eabi-gnatmake -P AdaTest.gpr -p` to build the project.

For now, it is not possible to use the SoftDevice with programmes written in Ada.

