#!/usr/bin/env ruby
# Script Name: lifesigns_engine.rb
# Script Author: William Willis Whinn
# Script Created: 2017-08-29
# Script Updated: 2017-09-18
# Project Repository: https://github.com/ultraviolet-1986/lifesigns-engine-ruby

# encoding: utf-8

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

# End of File.
