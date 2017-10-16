#!/usr/bin/env ruby

class ProgrammableKeycard
  attr_reader :name, :description, :clearance_level, :is_active

  def initialize(name, description, clearance_level, is_active)
    @name = name
    @description = description
    @clearance_level = clearance_level
    @is_active = is_active
  end

  def clearance_level=(clearance_level); @clearance_level = clearance_level end
  def is_active=(is_active); @is_active = is_active end

  ################################
  # Programmable Keycard Actions #
  ################################

  def activate
    if self.is_active == false
      self.is_active = true
      puts "Your #{self.name.green} has been activated"
    elsif self.is_active == true
      puts "Your #{self.name.red} has already been activated"
    else
      puts "Your #{self.name.red} has encountered an unknown error"
    end
  end

  def deactivate
    if self.is_active == true
      self.is_active = false
      puts "Your #{self.name.green} has been deactivated"
    elsif self.is_active == false
      puts "Your #{self.name.red} has already been deactivated"
    else
      puts "Your #{self.name.red} has encountered an unknown error"
    end
  end
end

# End of File.
