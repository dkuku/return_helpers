# SocketHelpers

Simple library that adds a piping possibility for easy returning from liveview

Imagine
```elixir
socket =
  socket
  |> assign(valid: true)
{:noreply, socket}
```

to write like:
```elixir
socket
|> assign(valid: true)
|> noreply()
```

Looks cleaner ?

## Examples
```elixir
iex(2)> socket = %{}
%{}
iex(3)> socket |> ok()
{:ok, %{}}
iex(4)> socket |> noreply()
{:noreply, %{}}
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `socket_helpers` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:return_helpers, "~> 0.0.1"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/socket_helpers](https://hexdocs.pm/socket_helpers).

