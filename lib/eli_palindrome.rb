require "eli_palindrome/version"


class String

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      self.scan(/[a-z]/i).join.downcase
    end
end

#module EliPalindrome
#  class Error < StandardError; end
  # Your code goes here...
#end
