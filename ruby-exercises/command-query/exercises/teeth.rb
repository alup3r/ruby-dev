# frozen_string_literal: true

# class teeth definition
class Teeth
  def initialize
    @clean = false
  end

  def clean?
    @clean
  end

  def brush
    @clean = true
  end
end
