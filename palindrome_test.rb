require_relative "myruby"
require "test/unit"

class TestPalindrome < Test::Unit::TestCase
  def test_palindrome
    assert_equal(true, 'abcba'.palindrome? )
    assert_equal(false, 'aabc'.palindrome? )
    assert_equal(true, 'あいいあ'.palindrome? )
  end
end
