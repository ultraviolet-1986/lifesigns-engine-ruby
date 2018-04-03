#!/usr/bin/env ruby

class Humanoid
  attr_reader :name, :description, :health_remaining, :inventory

  def initialize(name, description, health_remaining, inventory)
    @name = name
    @description = description
    @health_remaining = health_remaining
    @inventory = inventory
  end

  def health_remaining=(health_remaining); @health_remaining = health_remaining end
  def inventory=(inventory); @inventory = inventory end

  ####################
  # Humanoid Actions #
  ####################

  def say(speech)
    puts_wrap("\n#{speech}")
  end

  def think(thought)
    puts_wrap("#{thought}")
  end
end

# End of File.
