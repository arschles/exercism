defmodule NucleotideCount do
  import List
  import Map

  @nucleotides [?A, ?C, ?G, ?T]

  @doc """
  Counts individual nucleotides in a DNA strand.

  ## Examples

  iex> NucleotideCount.count('AATAA', ?A)
  4

  iex> NucleotideCount.count('AATAA', ?T)
  1
  """
  @spec count(charlist(), char()) :: non_neg_integer()
  def count(chars, nucleotide) do
    List.foldl(chars, 0, fn cur, acc ->
      if (nucleotide == cur) do acc+1 else 0 end
    end)
  end

  @doc """
  Returns a summary of counts by nucleotide.

  ## Examples

  iex> NucleotideCount.histogram('AATAA')
  %{?A => 4, ?T => 1, ?C => 0, ?G => 0}
  """
  @spec histogram(charlist()) :: map()
  def histogram(strand) do
    empty = List.foldl(@nucleotides, %{}, fn cur, map ->
      Map.put_new(map, cur, 0)
    end)

    List.foldl(strand, empty, fn cur, map ->
      Map.update(map, cur, 1, fn existing -> existing + 1 end)
    end)
  end
end
