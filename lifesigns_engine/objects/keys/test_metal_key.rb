#!/usr/bin/env ruby

require 'minitest/autorun'
require_relative 'metal_key'

class TestMetalKey < Minitest::Test
  def setup
    @test_metal_key = MetalKey.new(
      "Test Metal Key",
      "Description",
      "Unlock Target",
      false
    )
  end

  #####################
  # Declaration Tests #
  #####################

  # @test_metal_key.name

  def test_that_metal_key_name_is_defined
    assert @test_metal_key.name != nil
  end

  def test_that_metal_key_has_a_name
    assert_equal "Test Metal Key", @test_metal_key.name
  end

  # @test_metal_key.description

  def test_that_metal_key_description_is_defined
    assert @test_metal_key.description != nil
  end

  def test_that_metal_key_has_a_description
    assert_equal "Description", @test_metal_key.description
  end


  # @test_metal_key.unlock_target

  def test_that_metal_key_unlock_target_is_defined
    assert @test_metal_key.unlock_target != nil
  end

  def test_that_metal_key_has_an_unlock_target
    assert_equal "Unlock Target", @test_metal_key.unlock_target
  end

  # @test_metal_key.is_rusted

  def test_that_metal_key_is_rusted_is_defined
    assert @test_metal_key.is_rusted != nil
  end

  def test_that_metal_key_is_not_rusted
    assert_equal false, @test_metal_key.is_rusted
  end

  ##################
  # Function Tests #
  ##################

  # @test_metal_key.repair
  # @test_metal_key.rust

  def test_metal_key_can_be_rusted_and_repaired
    # Rust the Test Metal Key
    puts
    @test_metal_key.rust
    assert_equal true, @test_metal_key.is_rusted

    # Repair the Test Metal Key
    puts
    @test_metal_key.repair
    assert_equal false, @test_metal_key.is_rusted
  end
end
