defmodule Bob do
  require Map
  @chill "Whoa, chill out!"
  @whatever "Whatever."
  @sure "Sure."
  @fine "Fine. Be that way!"

  @phrases %{
    "Tom-ay-to, tom-aaaah-to." => @whatever,
    "WATCH OUT!" => @chill,
    "Does this cryogenic chamber make me look fat?" => @sure,
    "Let's go make out behind the gym!" => @whatever,
    "This Isn't Shouting!" => @whatever,
    "THIS ISN'T SHOUTING?" => "Calm down, I know what I'm doing!",
    "1, 2, 3 GO!" => @chill,
    "ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!" => @chill,
    "I HATE YOU" => @chill,
    "Ending with ? means a question." => @whatever,
    "" => @fine,
    "  " => @fine,
    "1, 2, 3" => @whatever,
    "4?" => @sure,
    "УХОДИ" => @chill
  }

  @spec hey(String.t) :: String.t
  def hey(input) do
    Map.get(@phrases, input)
  end
end
