#!/usr/bin/env ruby

class EMail
  attr_reader :name, :description, :sender, :recipient, :datestamp, :subject, :contents

  def initialize(name, description, sender, recipient, datestamp, subject, contents)
    @name = name
    @description = description
    @sender = sender
    @recipient = recipient
    @datestamp = datestamp
    @subject = subject
    @contents = contents
  end

  ##################
  # E-Mail Actions #
  ##################

  def read
    puts "SUBJECT: #{self.subject}"
    puts "FROM: #{self.sender}"
    puts "TO: #{self.recipient}"
    puts "SENT: #{self.datestamp}"
    puts
    puts "MESSAGE BODY:"
    puts "#{self.contents}"
  end
end

# End of File.
