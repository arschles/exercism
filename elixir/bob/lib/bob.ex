defmodule Bob do
  import String

  @spec is_uppercase(String.t()) :: boolean()
  def is_uppercase(str) do
    upcase(str) == str && valid?(str)
  end

  @spec is_question(String.t()) :: boolean()
  def is_question(str) do
    String.ends_with?(str, "?")
  end

  @spec hey(String.t()) :: String.t()
  def hey(input) do
    cond do
      # empty string
      trim(input) == "" -> "Fine. Be that way!"
      is_question(input) and is_uppercase(input) -> "Calm down, I know what I'm doing!"
      is_uppercase(input) -> "Whoa, chill out!"
      is_question(input) -> "Sure."
      true -> "Whatever."
    end
  end
end
