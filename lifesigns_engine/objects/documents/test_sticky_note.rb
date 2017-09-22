#!/usr/bin/env ruby

require 'minitest/autorun'
require_relative 'sticky_note'

class TestStickyNote < Minitest::Test
  def setup
    @test_sticky_note = StickyNote.new(
      "Test Sticky Note",
      "A sticky note for testing",
      "This is the content of the Test Sticky Note"
    )
  end

  def test_that_sticky_note_has_a_name
    assert_equal "Test Sticky Note", @test_sticky_note.name
  end

  def test_that_sticky_note_has_a_description
    assert_equal "A sticky note for testing", @test_sticky_note.description
  end

  def test_that_sticky_note_has_content
    assert_equal "This is the content of the Test Sticky Note", @test_sticky_note.contents
  end
end

# End of File.

