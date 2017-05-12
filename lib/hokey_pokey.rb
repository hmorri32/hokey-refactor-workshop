class HokeyPokeyz
  def verse(number)
    "You put your #{side(number)}#{body_part(number)} in\n" +
    "You put your #{side(number)}#{body_part(number)} out\n" +
    "You put your #{side(number)}#{body_part(number)} in\n" +
    "And you shake it all about\n" +
    "You do the Hokey Pokey and you turn yourself around\n" +
    "That's what it's all about!\n"
  end

  def song
    (1..5).map { |number| verse(number) }.join("\n")
  end

  private

  def side(number)
    if number == 5
      ""
    elsif number % 2 == 1
      "right "
    else
      "left "
    end
  end

  def body_part(number)
    if number == 1 || number == 2
      "foot"
    elsif number == 3 || number == 4
      "hand"
    elsif number == 5
      "head"
    end
  end
end


# REFACTORED

class HokeyPokey
  def verse(number)
    body_part = BodyPart.for(number)

    "You put your #{body_part} in\n" +
    "You put your #{body_part} out\n" +
    "You put your #{body_part} in\n" +
    "And you shake it all about\n" +
    "You do the Hokey Pokey and you turn yourself around\n" +
    "That's what it's all about!\n"
  end

  def song
    1.upto(6).map { |number| verse(number) }.join("\n")
  end
end

class BodyPart
  def initialize(number)
    @number = number
  end

  def self.for(number)
    case number
    when 1, 2
      Foot
    when 3, 4
      Hand
    when 5
      Head
    when 6
      Self
    end.new(number)
  end

  def side
    if number % 2 == 1
      "right "
    else
      "left "
    end
  end

  def to_s
    "#{side}#{specific_body_part}"
  end

  private

  attr_reader :number
end

class Foot < BodyPart
  def specific_body_part
    "foot"
  end
end

class Hand < BodyPart
  def specific_body_part
    "hand"
  end
end

class Head < BodyPart
  def specific_body_part
    "head"
  end

  def side
    ""
  end
end

class Self < BodyPart
  def specific_body_part
    "self"
  end

  def side
    "whole "
  end
end
