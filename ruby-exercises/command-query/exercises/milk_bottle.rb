# frozen_string_literal: true

# class milk_bottle definition
class MilkBottle
  def initialize
    @full = true
  end

  def full?
    @full
  end

  def spill
    @full = false
  end
end
