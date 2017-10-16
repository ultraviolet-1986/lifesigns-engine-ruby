#!/usr/bin/env ruby

class MetalKey
  attr_reader :name, :description, :unlock_target, :is_rusted

  def initialize(name, description, unlock_target, is_rusted)
    @name = name
    @description = description
    @unlock_target = unlock_target
    @is_rusted = is_rusted
  end

  def is_rusted=(is_rusted); @is_rusted = is_rusted end

  #####################
  # Metal Key Actions #
  #####################

  def repair
    if self.is_rusted == true
      self.is_rusted = false
      puts "The #{self.name.green} has been repaired"
    elsif self.is_rusted == false
      puts "The #{self.name.red} has already been repaired"
    else
      puts "Your #{self.name.red} has encountered an unknown error"
    end
  end

  def rust
    if self.is_rusted == false
      self.is_rusted = true
      puts "Your #{self.name.green} has rusted"
    elsif self.is_rusted == true
      puts "Your #{self.name.red} has already rusted"
    else
      puts "Your #{self.name.red} has encountered an unknown error"
    end
  end
end

# End of File.
