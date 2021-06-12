defmodule Game do
  # We pass the actual number we are trying to guess
  # And the range that we will be guessing from
  # Our program needs to find the actual number in the range
  def guess_number(actual, low..high) do
    guess = get_middle_from_range(low..high)

    # Call our private functions that does all the work
    guess_num(actual, low..high, guess)
  end

  # Example of how this works:
  # Given a range... 1..10
  # count = 10 - 1 + 1
  # 10 - div(10,2) = 10 - 5 = 5
  defp get_middle_from_range(low..high) do
    count = high-low+1
    high - div(count,2)
  end

  defp guess_num(actual, _, guess) when actual == guess do
    IO.puts("You got it! #{guess} is the actual number")
  end

  defp guess_num(actual, low.._, guess) when actual < guess do
    IO.puts("You guessed #{guess}. Bummer, is not, keep trying")
    new_guess = get_middle_from_range(low..guess)

    guess_num(actual, low..guess, new_guess)
  end

  defp guess_num(actual, _..high, guess) when actual > guess do
    IO.puts("You guessed #{guess}. Bummer, is not, keep trying")
    new_guess = get_middle_from_range(guess..high)

    guess_num(actual, guess..high, new_guess)
  end
end
