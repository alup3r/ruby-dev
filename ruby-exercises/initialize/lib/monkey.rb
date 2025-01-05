# frozen_string_literal: true

# class monkey definition
class Monkey
  attr_reader :name, :type, :favorite_food

  def initialize(data)
    @name = data[0]
    @type = data[1]
    @favorite_food = data[2]
  end
end
