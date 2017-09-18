#!/usr/bin/env ruby

class Journal
  attr_reader :name, :description, :contents

  def initialize(name, description, contents)
    @name = name
    @description = description
    @contents = contents
  end

  def contents=(contents)
    @contents = contents
  end

  def read
    puts_wrap "\n#{self.name}\n".underline
    self.contents.each do |page|
      puts_wrap "#{page}"
      puts
    end
  end
end

# End of File.
