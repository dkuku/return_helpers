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
      iex(2)> socket = %{}
      %{}
      iex(3)> socket |> ok()
      {:ok, %{}}
      iex(4)> socket |> noreply()
      {:noreply, %{}}
  """
  def ok(return), do: {:ok, return}
  def ok(return, params), do: {:ok, return, params}

  def error(reason), do: {:error, reason}

  def reply(reply), do: {:reply, reply}
  def reply(reply, state), do: {:reply, reply, state}

  def reply(return, state, other) do
    {:reply, return, state, other}
  end

  def noreply(state), do: {:noreply, state}
  def noreply(state, params), do: {:noreply, state, params}

  def noreply(state, params, other) do
    {:noreply, state, params, other}
  end

  def stop(reason), do: {:stop, reason}
  def stop(reason, state), do: {:stop, reason, state}

  def stop(reason, reply, state) do
    {:stop, reason, reply, state}
  end
end
