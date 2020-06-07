# Elixir Return Helpers
## Description

Simple library that adds a piping possibility for easy returning from pipes
Documentation https://hexdocs.pm/return_helpers/api-reference.html

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

or:
```elixir
socket |> assign(valid: true) |> noreply()
```

Looks cleaner ?

## Examples
```elixir
iex> socket = %{}
%{}
iex> socket |> ok()
{:ok, %{}}
iex> socket |> noreply()
{:noreply, %{}}
iex> %{} |> to_tuple(:error, "params") 
{:error, %{}, "params"}
iex> "34" |> between_strings("12", "56")
"123456"
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
- to_tuple/2
- to_tuple/3
- between_strings/3

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

