defmodule ReturnHelpers do
  @moduledoc """
  Simple library that adds a piping possibility for easy returning

  Imagine
  ```
    socket =
      socket
      |> assign(valid: true)
    {:noreply, socket}
  ```

  to write like:
  ```
    socket
    |> assign(valid: true)
    |> noreply()
  ```

  Looks cleaner ?
  """

  @doc """
  ## Examples
      iex(3)> %{} |> ok()
      {:ok, %{}}
      iex(4)> %{} |> ok("params")
      {:ok, %{}, "params"}
  """
  def ok(return), do: {:ok, return}
  def ok(return, params), do: {:ok, return, params}

  @doc """
  ## Examples
      iex> %{} |> error()
      {:error, %{}}
  """
  def error(reason), do: {:error, reason}

  @doc """
  ## Examples
      iex> %{} |> reply()
      {:reply, %{}}
      iex> %{} |> reply("state")
      {:reply, %{}, "state"}
      iex> %{} |> reply("state", [])
      {:reply, %{}, "state", []}
  """
  def reply(reply), do: {:reply, reply}
  def reply(reply, state), do: {:reply, reply, state}

  def reply(reply, state, other) do
    {:reply, reply, state, other}
  end

  @doc """
  ## Examples
      iex> %{} |> noreply()
      {:noreply, %{}}
      iex> %{} |> noreply("state")
      {:noreply, %{}, "state"}
      iex> %{} |> noreply("state", [])
      {:noreply, %{}, "state", []}
  """
  def noreply(state), do: {:noreply, state}
  def noreply(state, params), do: {:noreply, state, params}

  def noreply(state, params, other) do
    {:noreply, state, params, other}
  end

  @doc """
  ## Examples
      iex> %{} |> stop()
      {:stop, %{}}
      iex> %{} |> stop("state")
      {:stop, %{}, "state"}
      iex> %{} |> stop("state", [])
      {:stop, %{}, "state", []}
  """
  def stop(reason), do: {:stop, reason}
  def stop(reason, state), do: {:stop, reason, state}

  def stop(reason, reply, state) do
    {:stop, reason, reply, state}
  end

  @doc """
  # Examples
    iex> %{} |> to_tuple(:ok) 
    {:ok, %{}}
    iex> %{} |> to_tuple(:error, "params") 
    {:error, %{}, "params"}
  """
  def to_tuple(piped, first_arg) do
    {first_arg, piped}
  end

  def to_tuple(piped, first_arg, second_arg) do
    {first_arg, piped, second_arg}
  end

  @doc """
  # Example
    iex> "34" |> ReturnHelpers.between_strings("12", "56")
    "123456"
  """
  def between_strings(piped, string1, string2) do
    string1 <> piped <> string2
  end
end
