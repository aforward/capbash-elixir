FROM phusion/baseimage:0.9.16

RUN apt-get update
RUN apt-get install -y wget git build-essential

RUN wget http://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb
RUN dpkg -i erlang-solutions_1.0_all.deb
RUN apt-get update
RUN apt-get install -y erlang

# ENSURE UTF-8
RUN locale-gen en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

ADD src/elixir-@ELIXIR_VERSION@.tar.gz /opt/elixir
ENV PATH /opt/elixir/elixir-@ELIXIR_VERSION@/bin:$PATH
