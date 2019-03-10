defmodule MygadgetTest do
  use ExUnit.Case
  doctest Mygadget

  test "greets the world" do
    assert Mygadget.hello() == :world
  end
end
