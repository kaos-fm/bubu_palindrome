# frozen_string_literal: true

require_relative "bubu_palindrome/version"
module BubuPalindrome

  def palindrome?
    processed_content == processed_content.reverse
  end
  private

  def processed_content
    self.to_s                     #turn everything to string
        .downcase                 #handle upcase letters
        .split(/[^\w]/)           #handle spaces and punctuation
        .join                     #rebuil the string 
  end
end


class String
  include BubuPalindrome
end
class Integer
  include BubuPalindrome
end
