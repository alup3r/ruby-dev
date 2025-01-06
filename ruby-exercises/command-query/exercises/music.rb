# frozen_string_literal: true

# class music definition
class Music
  def initialize
    @loud = false
  end

  def loud?
    @loud
  end

  def turn_up
    @loud = true
  end
end
