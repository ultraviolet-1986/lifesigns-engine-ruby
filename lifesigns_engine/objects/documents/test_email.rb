#!/usr/bin/env ruby

require 'minitest/autorun'
require_relative 'email'

class TestEMail < Minitest::Test
  def setup
    @test_email = EMail.new(
      "Name",
      "Description",
      "Sender",
      "Recipient",
      "Datestamp",
      "Subject",
      "Contents"
    )
  end

  # @test_email.name

  def test_that_email_name_is_defined
    assert @test_email.name != nil
  end

  def test_that_email_has_a_name
    assert_equal "Name", @test_email.name
  end

  # @test_email.description

  def test_that_email_description_is_defined
    assert @test_email.description != nil
  end

  def test_that_email_has_a_description
    assert_equal "Description", @test_email.description
  end

  # @test_email.sender

  def test_that_email_sender_is_defined
    assert @test_email.sender != nil
  end

  def test_that_email_has_a_sender
    assert_equal "Sender", @test_email.sender
  end

  # @test_email.recipient

  def test_that_email_recipient_is_defined
    assert @test_email.recipient != nil
  end

  def test_that_email_has_a_recipient
    assert_equal "Recipient", @test_email.recipient
  end

  # @test_email.datestamp

  def test_that_email_datestamp_is_defined
    assert @test_email.datestamp != nil
  end

  def test_that_email_has_a_datestamp
    assert_equal "Datestamp", @test_email.datestamp
  end

  # @test_email.subject

  def test_that_email_subject_is_defined
    assert @test_email.subject != nil
  end

  def test_that_email_has_a_subject
    assert_equal "Subject", @test_email.subject
  end

  # @test_email.contents

  def test_that_email_contents_are_defined
    assert @test_email.contents != nil
  end

  def test_that_email_has_contents
    assert_equal "Contents", @test_email.contents
  end
end

# End of File.
