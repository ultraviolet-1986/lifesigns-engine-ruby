#!/usr/bin/env ruby

require 'minitest/autorun'
require_relative 'sticky_note'

class TestStickyNote < Minitest::Test
  def setup
    @test_sticky_note = StickyNote.new(
      "Name",
      "Description",
      "Contents"
    )
  end

  # @test_sticky_note.name

  def test_that_sticky_note_name_is_defined
    assert @test_sticky_note.name != nil
  end

  def test_that_sticky_note_has_a_name
    assert_equal "Name", @test_sticky_note.name
  end

  # @test_sticky_note.description

  def test_that_sticky_note_description_is_defined
    assert @test_sticky_note.description != nil
  end

  def test_that_sticky_note_has_a_description
    assert_equal "Description", @test_sticky_note.description
  end

  # @test_sticky_note.contents

  def test_that_sticky_note_contents_are_defined
    assert @test_sticky_note.contents != nil
  end

  def test_that_sticky_note_has_contents
    assert_equal "Contents", @test_sticky_note.contents
  end
end

# End of File.
