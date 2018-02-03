defmodule Cards do

  def create_deck do
    ["Ace", "Two", "Three"]
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end


  # def hello do
  #   "Hi there, bitches!"
  # end
end
