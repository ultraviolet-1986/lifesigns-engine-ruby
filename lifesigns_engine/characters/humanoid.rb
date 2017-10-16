#!/usr/bin/env ruby

class Humanoid
  attr_reader :name, :description, :speech_colour, :thought_colour, :inventory

  def initialize(name, description, speech_colour, thought_colour, inventory)
    @name = name
    @description = description
    @speech_colour = speech_colour
    @thought_colour = thought_colour
    @inventory = inventory
  end

  def inventory=(inventory); @inventory = inventory end

  ####################
  # Humanoid Actions #
  ####################

  def say(speech)
    puts_wrap("\n#{speech}".light_red)
  end

  def think(thought)
    puts_wrap("#{thought}".red)
  end
end

# End of File.
