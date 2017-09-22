#!/usr/bin/env ruby

require 'minitest/autorun'
require_relative 'email'

class TestJournal < Minitest::Test
  def setup
    @test_journal = Journal.new(
      "Name",
      "Description",
      ["Page 1", "Page 2"]
    )
  end

  # @test_journal.name

  def test_that_journal_name_is_defined
    assert @test_journal.name != nil
  end

  def test_that_journal_has_a_name
    assert_equal "Name", @test_journal.name
  end

  # @test_journal.description

  def test_that_journal_description_is_defined
    assert @test_journal.description != nil
  end

  def test_that_journal_has_a_description
    assert_equal "Description", @test_journal.description
  end

  # @test_journal.contents

  def test_that_journal_contents_are_defined
    assert @test_journal.contents != nil
  end

  def test_that_journal_has_contents
    assert_equal ["Page 1", "Page 2"], @test_journal.contents
  end

  def test_journal_page_1_exists
    assert_equal "Page 1", @test_journal.contents[0]
  end

  def test_journal_page_2_exists
    assert_equal "Page 2", @test_journal.contents[1]
  end
end

# End of File.
