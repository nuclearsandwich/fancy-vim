require: "foo"

class Foo {
  @@class_information = 'kusanagi

  def message {
    "message" * 3
  }

  def answer_for: question {
    @answer42 = 42.0
  }

  def going_negative{
    -9
  }

  def minus_pi {
    -3.1415
  }

  def self confused? {
    true || false
  }

  def emptiness {
    nil
  }

  def ghost: @value {
  }
}

class Bar : Foo {
  def message {
    super upcase
  }
}

