defmodule ExercicesTest do
  use ExUnit.Case
  doctest Exercices

  test "greets the world" do
    assert Exercices.hello() == :world
  end
end
