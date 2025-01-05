# frozen_string_literal: true

# class parrot definition
class Parrot
  attr_reader :name, :known_words, :sound

  def initialize(data = {})
    @name = data[:name]
    @known_words = data[:known_words]
    @sound = 'Squawk!'
  end
end
