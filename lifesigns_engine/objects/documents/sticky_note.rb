#!/usr/bin/env ruby

class StickyNote
  attr_reader :name, :description, :contents

  def initialize(name, description, contents)
    @name = name
    @description = description
    @contents = contents
  end

  def read
    puts "#{self.contents}"
  end
end

# End of File.
