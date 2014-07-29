FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y wget git build-essential

RUN wget http://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb
RUN dpkg -i erlang-solutions_1.0_all.deb
RUN apt-get update
RUN apt-get install -y erlang

WORKDIR /tmp/elixir-build
RUN git clone https://github.com/elixir-lang/elixir.git
WORKDIR elixir
RUN git checkout v@ELIXIR_VERSION@ && make && make install