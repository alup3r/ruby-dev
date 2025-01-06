# frozen_string_literal: true

# class kid definition
class Kid
  attr_reader :grams_of_sugar_eaten

  def initialize
    @grams_of_sugar_eaten = 0
    @hyperactive = false
  end

  def hyperactive?
    @hyperactive = @grams_of_sugar_eaten >= 60
  end

  def eat_candy
    @grams_of_sugar_eaten += 5
  end
end
