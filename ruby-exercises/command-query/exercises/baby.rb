# frozen_string_literal: true

# class baby definition
class Baby
  def initialize
    @tired = true
  end

  def tired?
    @tired
  end

  def nap
    @tired = false
  end
end
