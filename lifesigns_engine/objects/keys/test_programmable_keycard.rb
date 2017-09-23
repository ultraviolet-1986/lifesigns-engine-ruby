#!/usr/bin/env ruby

require 'minitest/autorun'
require_relative 'programmable_keycard'

class TestProgrammableKeycard < Minitest::Test
  def setup
    @test_programmable_keycard = ProgrammableKeycard.new(
      "Test Programmable Keycard",
      "Description",
      1,
      true
    )
  end

  #####################
  # Declaration Tests #
  #####################

  # @test_programmable_keycard.name

  def test_that_programmable_keycard_name_is_defined
    assert @test_programmable_keycard.name != nil
  end

  def test_that_programmable_keycard_has_a_name
    assert_equal "Test Programmable Keycard", @test_programmable_keycard.name
  end

  # @test_programmable_keycard.description

  def test_that_programmable_keycard_description_is_defined
    assert @test_programmable_keycard.description != nil
  end

  def test_that_programmable_keycard_has_a_description
    assert_equal "Description", @test_programmable_keycard.description
  end

  # @test_programmable_keycard.clearance_level

  def test_that_programmable_keycard_clearance_level_is_defined
    assert @test_programmable_keycard.clearance_level != nil
  end

  def test_that_programmable_keycard_has_a_clearance_level
    assert_equal 1, @test_programmable_keycard.clearance_level
  end

  # @test_programmable_keycard.is_active

  ##################
  # Function Tests #
  ##################

  # @test_programmable_keycard.activate
  # @test_programmable_keycard.deactivate

  def test_that_programmable_keycard_can_be_activated_and_deactivated
    # Deactivate the Test Programmable Keycard
    puts
    @test_programmable_keycard.deactivate
    assert_equal false, @test_programmable_keycard.is_active

    # Reactivate the Test Programmable Keycard
    puts
    @test_programmable_keycard.activate
    assert_equal true, @test_programmable_keycard.is_active
  end

  def test_that_programmable_keycard_cannot_be_activated_more_than_once
    # Check that the Test Programmable Keycard is already active
    puts
    assert_equal true, @test_programmable_keycard.is_active

    @test_programmable_keycard.activate
    assert_equal true, @test_programmable_keycard.is_active
  end

  def test_that_programmable_keycard_cannot_be_deactivated_more_than_once
    # Check that the Test Programmable Keycard is already inactive
    puts
    @test_programmable_keycard.deactivate
    assert_equal false, @test_programmable_keycard.is_active

    @test_programmable_keycard.deactivate
    assert_equal false, @test_programmable_keycard.is_active
  end
end

# End of File.
