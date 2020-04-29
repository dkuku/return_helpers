# ReturnHelpers
## Description

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

By adding `return_helpers` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:return_helpers, "~> 0.0.3"}
  ]
end
```

## Usage
```
import ReturnHelpers
```
globally for views

