defmodule MyList do

  def mapsum(list, f), do: _mapsum(list, f, 0)
  defp _mapsum([], _f, total), do: total
  
  defp _mapsum([head | tail], f, total), 
    do: _mapsum(tail, f, f.(head) + total)

  
  def filter(list, f), do: _filter(list, f, [])

  defp _filter([], _f, resultset), do: resultset
  
  defp _filter([head|tail], f, resultset) do
    if (f.(head)) do
      _filter(tail, f, resultset ++ [head])
    else
       _filter(tail, f, resultset)
    end
  end


  def reduce(list, f), do: _reduce(list, f, 1)
  defp _reduce([], _f, resultset), do: resultset
  defp _reduce([head | tail], f, resultset), 
    do: _reduce(tail, f, f.(resultset, head))

  
  def len([]), do: 0
  def len([_ | tail]), do: 1 + len(tail)

  def sumAll(list), do: _sumAll(list, 0)
  defp _sumAll([], acc), do: acc
  defp _sumAll([head | tail], acc), do: head + _sumAll(tail, acc)


  def max(list), do: _max(list, 0)
  defp _max([], max), do: max
  defp _max([head | tail], max) do
    if (head > max) do
      _max(tail, head)
    else
      _max(tail, max)
    end
  end

end 