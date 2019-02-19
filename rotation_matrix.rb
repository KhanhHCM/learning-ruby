def rotation(matrix)
  matrix_size = matrix.size
  matrix.each do |m|
    return "Please input square matrix" unless m.size == matrix_size
  end
  new_matrix = []
  matrix_size.times do
    new_matrix << Array.new(matrix_size)
  end

  (0..matrix_size - 1).each do |c|
    k = 0
    (matrix_size - 1).downto(0){ |d|
      new_matrix[k][c] = matrix[c][d]
      k += 1
    }
  end
  return new_matrix
end
