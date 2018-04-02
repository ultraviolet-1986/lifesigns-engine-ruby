#!/usr/bin/env ruby

# encoding: utf-8

#############
# Variables #
#############

# Lifesigns Engine Metadata

## Version

LE_VER_MAJOR = 0
LE_VER_MINOR = 1
LE_VER_PATCH = 0

## Homepage

LE_URL_GIT = 'https://github.com/ultraviolet-1986/lifesigns-engine-ruby/'

##########
# System #
##########

require_relative 'lifesigns_engine/system/inventory'
require_relative 'lifesigns_engine/system/style_sheet'
require_relative 'lifesigns_engine/system/terminal'

##############
# Characters #
##############

require_relative 'lifesigns_engine/characters/humanoid'

#############
# Locations #
#############

require_relative 'lifesigns_engine/locations/location'

###########
# Objects #
###########

# Documents

require_relative 'lifesigns_engine/objects/documents/email'
require_relative 'lifesigns_engine/objects/documents/journal'
require_relative 'lifesigns_engine/objects/documents/sticky_note'

# Keys

require_relative 'lifesigns_engine/objects/keys/metal_key'
require_relative 'lifesigns_engine/objects/keys/programmable_keycard'

# Weapons

require_relative 'lifesigns_engine/objects/weapons/firearm'

#############
# Kickstart #
#############

puts "Lifesigns Engine v#{LE_VER_MAJOR}.#{LE_VER_MINOR}.#{LE_VER_PATCH} / Ruby v#{RUBY_VERSION}".bold.red
puts "#{LE_URL_GIT}\n".red

# End of File.
