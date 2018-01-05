defmodule LeiTest do
  use ExUnit.Case
  doctest Lei

  test "greets the world" do
    assert Lei.hello() == :world
  end
end
