defmodule GitRealTest do
  use ExUnit.Case
  doctest GitReal

  test "greets the world" do
    assert GitReal.hello() == :world
  end
end
