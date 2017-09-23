#!/usr/bin/env ruby

class Firearm
  attr_reader :name, :description, :damage_inflicted, :capacity, :rounds_remaining, :clips_remaining, :is_usable

  def initialize(name, description, damage_inflicted, capacity, rounds_remaining, clips_remaining, is_usable)
    @name = name
    @description = description
    @damage_inflicted = damage_inflicted
    @capacity = capacity
    @rounds_remaining = rounds_remaining
    @clips_remaining = clips_remaining
    @is_usable = is_usable
  end

  def rounds_remaining=(rounds_remaining)
    @rounds_remaining = rounds_remaining
  end

  def clips_remaining=(clips_remaining)
    @clips_remaining = clips_remaining
  end

  def is_usable=(is_usable)
    @is_usable = is_usable
  end

  def add_clip
    self.clips_remaining += 1
    puts "Your #{self.name.green} now has " + "#{self.clips_remaining} clip(s)".green  + " remaining"
  end

  def fire_at(target)
    if self.rounds_remaining > 0
      self.rounds_remaining -= 1
      target.remaining_health -= self.damage_inflicted
    else
      puts "Your #{self.name.red} needs to be reloaded"
    end
  end

  def reload
    if self.clips_remaining > 0
      self.clips_remaining -= 1
      self.rounds_remaining = self.capacity
      puts "Your #{self.name.green} now has " + "#{self.rounds_remaining} round(s)".green + " remaining"
      puts "Your #{self.name.green} now has " + "#{self.clips_remaining} clip(s)".green + " remaining"
    elsif self.rounds_remaining > 0
      puts "Your #{self.name.red} still has " + "#{self.rounds_remaining} round(s)".red + " loaded"
    else
      puts "You have no remaining ammunition"
    end
  end
end

# End of File.
