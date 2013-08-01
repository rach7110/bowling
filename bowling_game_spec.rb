require 'rubygems'
require 'rspec'
require_relative 'bowling_game'

describe BowlingGame do 
  let(:game) { BowlingGame.new}


  context 'when only gutter balls are thrown' do
    it 'scores the game as 0' do
      20.times { game.roll(0) }

      expect(game.score).to eq(0)
    end
  end

  context 'when one pin is knocked down on each roll' do
    it 'scores the game as 20' do
      20.times { game.roll(1) }
      expect(game.score).to eq(20)
    end
  end
end
# Benefits of decomposing code/refactoring:
# more readabilty; code reuse/modularity 
# Code Smell: >5-10 lines code for a method

# Documentation driven development
# create an empty method and then write the documentation. How would you want this method called? Give some examples. (like U/I of code writing)

# Use the code before writing it. Think: how do I break this down into a series of steps?