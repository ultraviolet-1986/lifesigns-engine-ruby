#!/usr/bin/env ruby

require 'minitest/autorun'
require_relative 'firearm'

class TestFirearm < Minitest::Test
  def setup
    @test_firearm = Firearm.new(
      "Test Firearm",
      "Description",
      10,
      12,
      0,
      0,
      true
    )
  end

  #####################
  # Declaration Tests #
  #####################

  # @test_firearm.name

  def test_that_firearm_name_is_defined
    assert @test_firearm.name != nil
  end

  def test_that_firearm_has_a_name
    assert_equal "Test Firearm", @test_firearm.name
  end

  # @test_firearm.description

  def test_that_firearm_description_is_defined
    assert @test_firearm.description != nil
  end

  def test_that_firearm_has_a_description
    assert_equal "Description", @test_firearm.description
  end

  # @test_firearm.damage_inflicted

  def test_that_firearm_damage_inflicted_is_defined
    assert @test_firearm.damage_inflicted != nil
  end

  def test_that_firearm_can_inflict_damage
    assert_equal 10, @test_firearm.damage_inflicted
  end

  # @test_firearm.capacity

  def test_that_firearm_capacity_is_defined
    assert @test_firearm.capacity != nil
  end

  def test_that_firearm_can_hold_rounds
    assert_equal 12, @test_firearm.capacity
  end

  # @test_firearm.rounds_remaining

  def test_that_firearm_rounds_remaining_is_defined
    assert @test_firearm.rounds_remaining != nil
  end

  def test_that_firearm_has_no_rounds_remaining
    assert_equal 0, @test_firearm.rounds_remaining
  end

  # @test_firearm.clips_remaining

  def test_that_firearm_clips_remaining_is_defined
    assert @test_firearm.clips_remaining != nil
  end

  def test_that_firearm_has_no_clips_remaining
    assert_equal 0, @test_firearm.clips_remaining
  end

  # @test_firearm.is_usable

  def test_that_firearm_is_usable_is_defined
    assert @test_firearm.is_usable != nil
  end

  def test_that_firearm_can_be_fired
    assert_equal true, @test_firearm.is_usable
  end

  ##################
  # Function Tests #
  ##################

  # @test_firearm.add_clip
  # @test_firearm.reload

  def test_firearm_can_be_reloaded
    # Pick up a clip
    puts
    @test_firearm.add_clip
    assert_equal 1, @test_firearm.clips_remaining
    assert_equal 0, @test_firearm.rounds_remaining

    # Reload the weapon
    puts
    @test_firearm.reload
    assert_equal 0, @test_firearm.clips_remaining
    assert_equal 12, @test_firearm.rounds_remaining
  end
end

# End of File.
