# frozen_string_literal: true

# class narwhal definition
class Narwhal
  attr_accessor :cute, :name, :weight

  def initialize(attributes = {})
    @cute = attributes[:cute]
    @name = attributes[:name]
    @weight = attributes[:weight]
  end

  def cute?
    @cute
  end
end
