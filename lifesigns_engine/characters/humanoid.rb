#!/usr/bin/env ruby

class Humanoid
  attr_reader :name, :description, :maximum_health, :health_remaining, :inventory

  def initialize(name, description, inventory)
    @name = name
    @description = description
    @inventory = inventory
    @maximum_health = 100
    @health_remaining = 100
  end

  def maximum_health=(maximum_health); @maximum_health = maximum_health end
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

  def take_damage(damage_points)
    self.health_remaining = self.health_remaining - damage_points

    if self.health_remaining <= 0
      puts "\nYou lost your life. Game over."
      # TODO - Implement 'Game Over' logic here
    end
  end

  def heal(health_points)
    self.health_remaining = self.health_remaining + health_points

    if self.health_remaining >= self.maximum_health
      self.health_remaining = self.maximum_health
    end
  end
end

# End of File.
