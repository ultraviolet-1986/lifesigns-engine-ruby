#!/usr/bin/env ruby

class Inventory
  attr_reader :inventory

  def initialize
    @inventory = []
  end

  def inventory=(inventory); @inventory = inventory end

  ##########################
  # Inventory Item Viewing #
  ##########################

  def list_items
    if self.inventory.empty?
      puts "Your inventory is empty"
    else
      self.inventory.each do |item|
        if item == self.inventory.last
          puts "#{item.name}".bold
          puts "#{item.description}"
        else
          puts "#{item.name}".bold
          puts "#{item.description}"
          puts
        end
      end
    end
  end

  #############################
  # Inventory Item Management #
  #############################

  def add_item(item)
    if defined? item
      self.inventory.push(item)
    end
  end

  def remove_item(item)
    if self.inventory.include? item
      self.inventory.delete(item)
    end
  end
end

# End of File.
