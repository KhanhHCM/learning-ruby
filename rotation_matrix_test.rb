require_relative "rotation_matrix"
require "test/unit"

class TestRotationMatrix < Test::Unit::TestCase
  def test_rotation_matrix
    matrix = [[1,2,3], [4,5,6], [7,8,9]]
    assert_equal([[3,6,9], [2,5,8],[1,4,7]], matrix.rotation )
  end
end
