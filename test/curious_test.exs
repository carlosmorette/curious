defmodule CuriousTest do
  use ExUnit.Case
  doctest Curious

  test "greets the world" do
    assert Curious.hello() == :world
  end
end
