# frozen_string_literal: true

# class tire definition
class Tire
  def initialize
    @flat = false
  end

  def flat?
    @flat
  end

  def blow_out
    @flat = true
  end
end
