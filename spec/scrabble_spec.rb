require('rspec')
require('scrabble')

describe("Scrabble#score") do
  it("returns a scrabble score for a letter") do
    word = Scrabble.new("a")
    expect(word.score()).to(eq(1))
  end
end
