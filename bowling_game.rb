class BowlingGame

	def initialize 
		@rolls = []
	end

# Record a roll in the game.
#
# pins - The Integer number of pins knocked down in this roll.
#
# Returns nothing.
  def roll(pins)
    @rolls.push(pins)
  end

  def score

  end

# Returns the Integer score for this game.
  def score
    @rolls.reduce(:+)
  end


end
