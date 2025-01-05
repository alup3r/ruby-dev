# frozen_string_literal: true

# Jackalope class
class Jackalope
  attr_reader :name, :etymology

  def initialize(name)
    @name = name
    @etymology = %w[Jackrabbit Antelope]
  end
end
