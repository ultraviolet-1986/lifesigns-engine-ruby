#!/usr/bin/env ruby

class ProgrammableKeycard
  attr_reader :name, :description, :clearance_level, :is_active

  def initialize(name, description, clearance_level, is_active)
    @name = name
    @description = description
    @clearance_level = clearance_level
    @is_active = is_active
  end

  def clearance_level=(clearance_level)
    @clearance_level = clearance_level
  end

  def is_active=(is_active)
    @is_active = is_active
  end

  def activate
    self.is_active = true
  end

  def deactivate
    self.is_active = false
  end
end

# End of File.
