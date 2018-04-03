#!/usr/bin/env ruby

require 'minitest/autorun'
require_relative 'humanoid'
require_relative '../system/inventory'

class TestHumanoid < Minitest::Test
  def setup
    @test_inventory = Inventory.new()

    @test_humanoid = Humanoid.new(
      "Name",
      "Description",
      @test_inventory
    )
  end

  #####################
  # Declaration Tests #
  #####################

  # @test_humanoid.name

  def test_that_humanoid_name_is_defined
    assert @test_humanoid.name != nil
  end

  def test_that_humanoid_has_a_name
    assert_equal "Name", @test_humanoid.name
  end

  # @test_humanoid.description

  def test_that_humanoid_description_is_defined
    assert @test_humanoid.description != nil
  end

  def test_that_humanoid_has_a_description
    assert_equal "Description", @test_humanoid.description
  end

  # @test_humanoid.inventory

  def test_that_humanoid_has_an_inventory
    assert @test_humanoid.inventory != nil
    puts "\n#{@test_humanoid.name} has an inventory".green
  end

  def test_that_humanoid_does_not_have_an_inventory
    @test_humanoid.inventory = nil
    assert @test_humanoid.inventory.nil?
    puts "\n#{@test_humanoid.name} does not have an inventory".red
  end

  # @test_humanoid.maximum_health

  def test_that_humanoid_maximum_health_is_defined
    assert @test_humanoid.maximum_health != nil
  end

  def test_that_humanoid_maximum_health_is_100
    assert_equal 100, @test_humanoid.maximum_health
  end

  # @test_humanoid.health_remaining

  def test_that_humanoid_health_remaining_is_defined
    assert @test_humanoid.health_remaining != nil
  end

  def test_that_humanoid_health_remaining_is_100
    assert_equal 100, @test_humanoid.health_remaining
  end

  ##################
  # Function Tests #
  ##################

  # @test_humanoid.say

  def test_that_humanoid_can_speak
    puts
    puts "Can you speak?".yellow
    @test_humanoid.say("I can speak".green)
  end

  # @test_humanoid.think

  def test_that_humanoid_can_think
    puts
    puts "Can you think?".yellow
    @test_humanoid.think("I can think".green)
  end

  # TODO - Test characters can be hurt and healed
end
