class Array

  def rotation
    new_array = [[0,0,0], [0,0,0], [0,0,0]]
    (0..2).each do |c|
      k = 0
      2.downto(0){ |d|
        new_array[k][c] = self[c][d]
        k += 1
      }
    end

    return new_array
  end

end
