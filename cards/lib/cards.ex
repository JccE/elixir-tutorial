defmodule Cards do

  def create_deck do
   values =  ["Ace", "Two", "Three", "Four", "Five"]
   suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

# dont do it this way, returns a list of lists
  # for value <- values do
  #   for suit <- suits do
  #     "#{value}" of "#{suit}"
  #   end
  # end

# # solution number 1
#     cards = for value <- values do
#       for suit <- suits do
#         "#{value} of #{suit}"
#       end
#     end
#     List.flatten(cards)
#   end

# solution number 2
    for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end

  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end
  # def hello do
  #   "Hi there, bitches!"
  # end
end
