# Lifesigns Engine (Ruby)

A Ruby-based text adventure game engine

## Table of Contents

- [Introduction](#introduction)

## Introduction

The Lifesigns Engine is written in Ruby and is a framework for creating
interactive stories or text adventure games. The items and functionality
contained aim to represent the real world using text. The inspiration for this
project is [Ren'Py](https://www.renpy.org/) - but with a focus on the
command-line.

Another inspiration for this project is to reintroduce text-only games as a
valid and enjoyable medium - similar in concept to the 'read-your-own-adventure'
books which were popular in the 1980s and 1990s. It is my intent that a player
or creator will be able to play or create an adventure game armed with their
wits and a cup of tea. It may also help new `Ruby` developers to become familiar
with their chosen language.

## Dependencies

By default, the Lifesigns Engine does not require anything except Ruby to
function correctly, but for testing and debugging purposes, a test suite is
included and it is optional for users to install the `minitest` Ruby Gem or not.
The game engine will still function correctly without it, but you will not be
able to run any tests of the game assets.

The Lifesigns Engine is also written under a GNU/Linux environment and some
functionality may be missing when used with alternative operating systems.

## Characters

Although it is fully possible to write a game using the *Lifesigns Engine* using
only a single player character, it is also possible to control multiple
characters and then swap between them. This mechanism is inspired by the Capcom
survival horror game *Resident Evil Zero*. Using this mechanism, it will be
possible to create a larger and more complex adventure game with the means to
switch characters at will and assume possession of their items and location.

## Character Inventories

By default, a character and inventory are separate objects - this allows the
developer to give possession of one character's inventory to another character
in the event of their death (for example), or to allow for characters passing
objects back and forth in order to complete more complex puzzles.
