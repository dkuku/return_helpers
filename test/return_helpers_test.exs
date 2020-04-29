defmodule ReturnHelpersTest do
  use ExUnit.Case
  import ReturnHelpers
  doctest ReturnHelpers

  test "ok returns proper value" do
    socket = "socket"
    assert ok(socket) == {:ok, socket}
  end

  test "noreply returns proper value" do
    socket = "socket"
    assert noreply(socket) == {:noreply, socket}
  end
end
