defmodule ReturnHelpers do
  @moduledoc """
  Simple library that adds a piping possibility for easy returning from liveview

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
  def ok(return) do
    {:ok, return}
  end

  def ok(return, params) do
    {:ok, return, params}
  end

  def reply(return) do
    {:reply, return}
  end

  def reply(return, params) do
    {:reply, return, params}
  end

  def noreply(return) do
    {:noreply, return}
  end

  def noreply(return, params) do
    {:noreply, return, params}
  end
end
