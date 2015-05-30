FROM ubuntu:14.04

# ENSURE UTF-8
RUN locale-gen en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

# Erlang
RUN \
  apt-get update && \
  apt-get install -y wget git build-essential && \
  wget http://packages.erlang-solutions.com/site/esl/esl-erlang/FLAVOUR_1_esl/esl-erlang_@ERLANG_VERSION@~ubuntu~trusty_amd64.deb && \
  dpkg --force-depends -i esl-erlang_@ERLANG_VERSION@~ubuntu~trusty_amd64.deb

# Elixir
ADD src/elixir-@ELIXIR_INTERNAL_VERSION@.tar.gz /opt/elixir/
WORKDIR /opt/elixir/elixir-@ELIXIR_INTERNAL_VERSION@
RUN make install

ENV PATH /opt/elixir/elixir-@ELIXIR_INTERNAL_VERSION@/bin:node_modules/.bin:$PATH

VOLUME ["/src","/log","/data"]
WORKDIR /src
