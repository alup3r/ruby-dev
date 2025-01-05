# frozen_string_literal: true

# class quail definition
class Quail
  attr_reader :name

  def initialize(name)
    @name = name.capitalize
  end
end
