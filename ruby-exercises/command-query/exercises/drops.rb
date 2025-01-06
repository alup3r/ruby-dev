# frozen_string_literal: true

# class drops definition
class Drops
  attr_reader :count

  def initialize
    @count = 0
  end

  def drip
    @count += 1
  end
end
