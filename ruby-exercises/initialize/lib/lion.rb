# frozen_string_literal: true

# class lion definition
class Lion
  attr_reader :name, :sound

  def initialize(attribute_hash)
    @name = attribute_hash[:name]
    @sound = attribute_hash[:sound]
  end
end
