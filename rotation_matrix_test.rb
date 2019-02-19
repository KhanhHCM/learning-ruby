require_relative "rotation_matrix"
require "test/unit"

class TestRotationMatrix < Test::Unit::TestCase
  def test_rotation_square_matrix
    matrix2 = [[1,2], [3,4]]
    matrix3 = [[1,2,3], [4,5,6], [7,8,9]]

    assert_equal([[2,4], [1,3]], rotation(matrix2))
    assert_equal([[3,6,9], [2,5,8],[1,4,7]], rotation(matrix3))
  end

  def test_not_square_matrix
    error = "Please input square matrix"
    matrix = [[1,2,3], [4,5,6], [7,8,9], [10,11,12]]
    assert_equal(error, rotation(matrix))
  end
end
