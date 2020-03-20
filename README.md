# grpc-web Helloworld in grpc-elixir

Test project for tracking implementation of [grpc-web](https://github.com/grpc/grpc/blob/master/doc/PROTOCOL-WEB.md#protocol-differences-vs-grpc-over-http2) in [grpc-elixir](https://github.com/elixir-grpc/grpc) ([Fork](https://github.com/drowzy/grpc/tree/feature/grpc-web))

## Usage

1. Install deps and compile
```shell
$ mix do deps.get, deps.compile
```

2. Start the server
```shell
$ iex -S mix
```

3. Start client application:

```
cd web
```
```
npm i && npm start
```

Open `localhost:8080` in a browser, open devtools, check console for results.
