if !System.get_env("EXERCISM_TEST_EXAMPLES") do
  Code.load_file("hello_world.exs", __DIR__)
end

ExUnit.start()
ExUnit.configure(exclude: :pending, trace: true)

defmodule HelloWorldTest do
  use ExUnit.Case

  # @tag :pending
  test "says 'Hello, World!'" do
    assert HelloWorld.hello() == "Hello, World!"
  end
end
