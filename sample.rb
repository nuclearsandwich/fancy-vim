require "date"

class Foo
  def message
    "message" * 3
  end

  def answer_for question
    42.0
  end

  def self.confused?
    true || false
  end

  def emptiness
    nil
  end
end

class Bar < Foo
  def message
    super.upcase
  end
end

