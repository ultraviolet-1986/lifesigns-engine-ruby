#!/usr/bin/env ruby

class Humanoid
  attr_reader :name, :description, :speech_colour, :speech, :thought_colour, :thought, :inventory

  def initialize(name, description, speech_colour, speech, thought_colour, thought, inventory)
    @name = name
    @description = description
    @speech_colour = speech_colour
    @speech = speech
    @thought_colour = thought_colour
    @thought = thought
    @inventory = inventory
  end

  def inventory=(inventory)
    @inventory = inventory
  end

  def say
  end

  def think
  end
end

# End of File.
