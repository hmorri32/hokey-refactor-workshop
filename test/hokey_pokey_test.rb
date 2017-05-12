require_relative 'test_helper'
require_relative '../lib/hokey_pokey'

class HokeyPokeyTest < Minitest::Test
  def test_verse_1
    expected = <<-VERSE
You put your right foot in
You put your right foot out
You put your right foot in
And you shake it all about
You do the Hokey Pokey and you turn yourself around
That's what it's all about!
VERSE
    assert_equal expected, HokeyPokey.new.verse(1)
  end

  def test_verse_2
    skip
    expected = <<-VERSE
You put your left foot in
You put your left foot out
You put your left foot in
And you shake it all about
You do the Hokey Pokey and you turn yourself around
That's what it's all about!
VERSE
    assert_equal expected, HokeyPokey.new.verse(2)
  end

  def test_verse_3
    skip
    expected = <<-VERSE
You put your right hand in
You put your right hand out
You put your right hand in
And you shake it all about
You do the Hokey Pokey and you turn yourself around
That's what it's all about!
VERSE

    assert_equal expected, HokeyPokey.new.verse(3)
  end

  def test_verse_4
    skip
    expected = <<-VERSE
You put your left hand in
You put your left hand out
You put your left hand in
And you shake it all about
You do the Hokey Pokey and you turn yourself around
That's what it's all about!
VERSE

    assert_equal expected, HokeyPokey.new.verse(4)
  end

  def test_verse_5
    skip
    expected = <<-VERSE
You put your head in
You put your head out
You put your head in
And you shake it all about
You do the Hokey Pokey and you turn yourself around
That's what it's all about!
VERSE

    assert_equal expected, HokeyPokey.new.verse(5)
  end

  def test_verse_6
    expected = <<-VERSE
You put your whole self in
You put your whole self out
You put your whole self in
And you shake it all about
You do the Hokey Pokey and you turn yourself around
That's what it's all about!
VERSE

    assert_equal expected, HokeyPokey.new.verse(6)
  end

  def test_the_whole_song
    skip
    expected = <<-SONG
You put your right foot in
You put your right foot out
You put your right foot in
And you shake it all about
You do the Hokey Pokey and you turn yourself around
That's what it's all about!

You put your left foot in
You put your left foot out
You put your left foot in
And you shake it all about
You do the Hokey Pokey and you turn yourself around
That's what it's all about!

You put your right hand in
You put your right hand out
You put your right hand in
And you shake it all about
You do the Hokey Pokey and you turn yourself around
That's what it's all about!

You put your left hand in
You put your left hand out
You put your left hand in
And you shake it all about
You do the Hokey Pokey and you turn yourself around
That's what it's all about!

You put your head in
You put your head out
You put your head in
And you shake it all about
You do the Hokey Pokey and you turn yourself around
That's what it's all about!

You put your whole self in
You put your whole self out
You put your whole self in
And you shake it all about
You do the Hokey Pokey and you turn yourself around
That's what it's all about!
SONG

    assert_equal expected, HokeyPokey.new.song
  end
end
