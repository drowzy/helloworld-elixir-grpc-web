defmodule Helloworld.Greeter.Server do
  use GRPC.Server, service: Helloworld.Greeter.Service

  @spec say_hello(Helloworld.HelloRequest.t(), GRPC.Server.Stream.t()) ::
          Helloworld.HelloReply.t()
  def say_hello(request, _stream) do
    Helloworld.HelloReply.new(message: "Hello #{request.name}")
  end

  @spec say_repeat_hello(Helloworld.RepeatHelloRequest.t(), GRPC.Server.Stream.t()) :: any
  def say_repeat_hello(request, stream) do
    0..request.count
    |> Enum.map(&Helloworld.HelloReply.new(message: "Hello #{request.name} #{&1}"))
    |> Enum.each(&GRPC.Server.send_reply(stream, &1))
  end

  def say_hello_after_delay(request, _stream) do
    delay = 5000
    :timer.sleep(delay)
    Helloworld.HelloReply.new(message: "Hello #{request.name} after #{delay}")
  end
end
