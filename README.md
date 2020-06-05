# Elixir Return Helpers
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

## Helpers provided
- error/1
- noreply/1
- noreply/2
- noreply/3
- ok/1
- ok/2
- reply/1
- reply/2
- reply/3
- stop/1
- stop/2
- stop/3

## Installation

By adding `return_helpers` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:return_helpers, "~> 0.1.0"}
  ]
end
```

## Usage with liveview
```
  defp view_helpers do
    quote do
      ...
      import ReturnHelpers
    end
  end
```
globally for views

