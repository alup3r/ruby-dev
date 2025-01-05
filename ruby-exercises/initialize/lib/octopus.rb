# frozen_string_literal: true

# class octopus definition
class Octopus
  attr_reader :name, :friend

  def initialize(name, friend = {})
    @name = name
    @friend = friend
  end
end
