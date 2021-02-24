FROM elixir:latest

RUN apt-get update && \
    apt-get install -y postgresql-client && \
    apt-get install -y inotify-tools && \
    mix local.hex --force && \
    mix archive.install hex phx_new 1.5.3 --force && \
    mix local.rebar --force

WORKDIR /app
COPY . .

RUN mix do deps.get, deps.compile

ENTRYPOINT ["/bin/sh", "-c" , "mix phx.server" ]
