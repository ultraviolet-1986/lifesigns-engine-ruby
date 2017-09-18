#!/usr/bin/env ruby

#############
# Variables #
#############

# Operating system information
OPERATING_SYSTEM = `uname -s`.gsub("\n","")

# Terminal size information
COLUMNS = `tput cols`.gsub("\n","")
ROWS = `tput lines`.gsub("\n","")

#############
# Functions #
#############

def clear
  system('clear')
end

def detect_os
  if "#{OPERATING_SYSTEM}" == 'Linux'
    puts "Using Linux"
  else
    puts "Not Linux"
  end
end

def puts_terminal_size
  puts "#{COLUMNS}x#{ROWS}"
end

def puts_wrap(s, width = COLUMNS)
  puts s.gsub(/(.{1,#{width}})(\s+|\Z)/, "\\1\n")
end

# End of File.
