defmodule NucleotideCount do
  require List
  require Map
  require IO

  @nucleotides [?A, ?C, ?G, ?T]
  
  @spec equal(char, char) :: non_neg_integer
  defp equal(nucleotide1, nucleotide2) do
    if (nucleotide1 == nucleotide2) do 1 else 0 end
  end

  @doc """
  Counts individual nucleotides in a DNA strand.

  ## Examples

  iex> NucleotideCount.count('AATAA', ?A)
  4

  iex> NucleotideCount.count('AATAA', ?T)
  1
  """
  @spec count([char], char) :: non_neg_integer
  def count(strand, nucleotide) do
    Enum.reduce(strand, 0, fn(x, acc) -> acc + equal(x, nucleotide) end)
  end

  @doc """
  Returns a summary of counts by nucleotide.

  ## Examples

  iex> NucleotideCount.histogram('AATAA')
  %{?A => 4, ?T => 1, ?C => 0, ?G => 0}
  """
  @spec histogram([char]) :: map
  def histogram(strand) do
    Enum.reduce(strand, %{}, fn nucleotide, acc -> Map.update(acc, nucleotide, 1, &(&1 +1)) end)
  end
end
