# frozen_string_literal: true

# class floor definition
class Floor
  def initialize
    @floor = true
  end

  def dirty?
    @floor
  end

  def wash
    @floor = false
  end
end
