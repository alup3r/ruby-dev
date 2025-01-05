# frozen_string_literal: true

# class rabbit definition
class Rabbit
  attr_reader :name, :num_syllables

  def initialize(data = {})
    @num_syllables = data[:num_syllables]
    @name = num_syllables == 2 ? "#{data[:name]} Rabbit" : data[:name]
  end
end
