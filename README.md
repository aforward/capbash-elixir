capbash-elixir
==============

Scripts for installing [elixir](http://elixir-lang.org/) a functional, meta-programming aware language built on top of the Erlang VM., should be used in conjunction with capbash

# How to Install #

Install capbash first, more details at:
https://github.com/aforward/capbash

```
git clone https://github.com/aforward/capbash YOUR_REPO_ROOT
cd YOUR_REPO_ROOT
./bootstrap
```

Now you can install elixir into your project

```
./capbash install elixir
```

# Configurations #

The available configurations include:

```
ELIXIR_VERSION=${ELIXIR_VERSION-0.14.3}
```

# Deploy to Remote Server #

To push the elixir script to your server, all you need if the IP or hostname of your server (e.g. 192.167.0.48) and your root password.

```
./capbash deploy <IP> elixir
```

For example,

```
./capbash deploy 127.0.0.1 elixir
```
