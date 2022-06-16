# frozen_string_literal: true

require "test_helper"

class TestBubuPalindrome < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::BubuPalindrome::VERSION
  end

  def test_it_does_something_useful
    assert true
  end

  def test_has_readme?
    assert true
  end

  def test_non_palindrome
    assert !"apple".palindrome?
  end

  def test_palindrome
    assert "racecar".palindrome?
  end

  def test_Upcase_palindrome
    assert "RaceCar".palindrome?
  end

  def test_palindrome_with_punctuation
    assert "Madam, I'm Adam".palindrome?
  end

  def test_number_palindrome
    assert "1991".palindrome?
    assert 1991.palindrome?
  end




end
