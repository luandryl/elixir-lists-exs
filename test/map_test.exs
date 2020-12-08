defmodule MapTest do
  use ExUnit.Case
  doctest MyList

  test "mapSum" do
    assert MyList.mapsum([1,2,3,4], &(&1 + 2)) === 18
  end

  test "filter [1,2,3,4] > 2" do
    assert MyList.filter([1,2,3,4], &(&1 > 2)) === [3,4]
  end

  test "filter [1,2,3,4] < 2" do
    assert MyList.filter([1,2,3,4], &(&1 <= 2)) === [1,2]
  end

  test "reduce [1,2,3,4] == 24" do
    assert MyList.reduce([1,2,3,4], fn (acc, element) -> acc * element end) === 24
  end

  test "lenght [1,2,3,4] === 4" do 
    assert MyList.len([1,2,3,4]) === 4
  end

  test "sum all [1,2,3,4]" do
    assert MyList.sumAll([1,2,3,4]) === 10
  end

  test "sum all even" do 
    result = 
      [1,2,3,4]
        |> MyList.filter(&(rem(&1, 2) == 0))
        |> MyList.sumAll

    assert result === 6
  end

  test "sum all odds" do 
    result = 
      [1,2,3,4]
        |> MyList.filter(&(rem(&1, 2) == 1))
        |> MyList.sumAll

    assert result === 4
  end

  test "max element on list" do
    assert MyList.max([1,2,3,4]) === 4
  end
  
end
  