#!/usr/bin/env ruby

##############
# References #
##############

class String
  def black; "\e[30m#{self}\e[0m" end
  def gray; "\e[37m#{self}\e[0m" end
  def grey; "\e[37m#{self}\e[0m" end
  def white; "\e[97m#{self}\e[0m" end

  def blue; "\e[34m#{self}\e[0m" end
  def cyan; "\e[36m#{self}\e[0m" end
  def green; "\e[32m#{self}\e[0m" end
  def magenta; "\e[35m#{self}\e[0m" end
  def red; "\e[31m#{self}\e[0m" end
  def yellow; "\e[33m#{self}\e[0m" end

  def light_blue; "\e[94m#{self}\e[0m" end
  def light_cyan; "\e[96m#{self}\e[0m" end
  def light_green; "\e[92m#{self}\e[0m" end
  def light_magenta; "\e[95m#{self}\e[0m" end
  def light_red; "\e[91m#{self}\e[0m" end
  def light_yellow; "\e[93m#{self}\e[0m" end

  def blink; "\e[5m#{self}\e[25m" end
  def bold; "\e[1m#{self}\e[22m" end
  def invert; "\e[7m#{self}\e[27m" end
  def italic; "\e[3m#{self}\e[23m" end
  def underline; "\e[4m#{self}\e[24m" end
end

# End of File.
