#!/usr/bin/env ruby

class Location
  attr_reader :name, :description, :contents, :items, :exits

  def initialize(name, description, contents, items, exits)
    @name = name
    @description = description
    @contents = contents
    @items = items
    @exits = exits
  end

  def contents=(contents); @contents = contents end
  def items=(items); @items = items end
  def exits=(exits); @exits = exits end

  ####################
  # Location Viewing #
  ####################

  def display_location
    clear
    puts_wrap("#{self.name}".bold)
    puts_wrap("#{self.description}")
    puts
    puts_wrap("#{self.contents}")
    if self.items.any?
      puts
      puts_wrap("Room Contains:".underline)
      self.items.each do |item|
        if item == self.items.first
          puts
          puts_wrap("\n#{item.name}".bold)
          puts_wrap("#{item.description}")
        elsif item == self.items.last
          puts_wrap("#{item.name}".bold)
          puts_wrap("#{item.description}")
        else
          puts_wrap("#{item.name}".bold)
          puts_wrap("#{item.description}")
          puts
        end
      end
    end
  end

  ############################
  # Location Item Management #
  ############################

  def add_item(item)
    if defined? item
      self.items.push(item)
    end
  end

  def remove_item(item)
    if self.items.include? item
      self.items.delete(item)
    end
  end

  def take_item_from_location(item, inventory)
    if (defined? item) && (self.items.include? item)
      inventory.add_item(item)
      self.items.delete(item)
    end
  end

  ########################
  # Location Orientation #
  ########################

  def list_exits
    print "\nValid directions:".bold + " "
    self.exits.each do |exit|
      if exit == self.exits.last
        print "#{exit}".green
      else
        print "#{exit}".green + ", "
      end
    end
    puts
  end

  def test_direction(x, y)
    if self.exits.include? "#{x}"
      send("#{y}")
    else
      puts "\nIt is not possible to move in this direction."
    end
    show_prompt()
  end

  ####################
  # User Interaction #
  ####################

  def show_prompt
    prompt = '> '.bold.green
    print "\n#{prompt}"
  end

  def move(north, east, south, west)
    show_prompt()
    while input = gets.chomp.downcase

      # No input
      if input.empty?
        self.display_location
        puts "\nPlease input a command.".red
        show_prompt()

      # Compass direction commands
      elsif input == 'north' or input == 'n'
        test_direction('n', north)
      elsif input == 'east' or input == 'e'
        test_direction('e', east)
      elsif input == 'south' or input == 's'
        test_direction('s', south)
      elsif input == 'west' or input == 'w'
        test_direction('w', west)
      elsif input == 'exit' or input == 'quit'
        puts "\nThank you for playing.\n".green
        exit

      # Console manipulation commands
      elsif input == 'clear' or input == 'cls'
        self.display_location
        show_prompt()
      elsif input == 'help'
        self.display_location
        self.list_exits
        show_prompt()

      # Save / Load the game
      elsif input == 'load'
        puts "\nLoading the game is not yet implemented.".red
        show_prompt()
      elsif input == 'save'
        puts "\nSaving the game is not yet implemented.".red
        show_prompt()


      # Catch any other error here
      else
        self.display_location
        puts "\nPlease input a valid command.".red
        show_prompt()
      end
    end
  end
end

# End of File.
