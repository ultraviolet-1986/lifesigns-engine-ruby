#!/usr/bin/env ruby

class MetalKey
  attr_reader :name, :description, :unlock_target, :is_rusted

  def initialize(name, description, unlock_target, is_rusted)
    @name = name
    @description = description
    @unlock_target = unlock_target
    @is_rusted = is_rusted
  end

  def is_rusted=(is_rusted)
    @is_rusted = is_rusted
  end

  def repair
    if self.is_rusted == true
      self.is_rusted = false
      puts "The #{self.name} has been repaired"
    else
      puts "The #{self.name} does not need to be repaired"
    end
  end

  def rust
    if self.is_rusted == false
      self.is_rusted = true
      puts "The #{self.name} has become rusty"
    else
      puts "The #{self.name} is already rusty"
    end
  end
end

# End of File.
