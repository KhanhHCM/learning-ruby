#Đây là cái để thử làm xoay 1 ma trận bất kỳ (ko phải ma trận vuông) , mà chưa nghĩ ra giải thuật. Thôi để học qua cái khác trước

a = []
hash = []
i = 0
begin
  puts "Line #{i}: (please input with space ! want to stop input \"exit\"!)"
  input = gets.chomp
  a[i] = input.split(" ").map(&:to_i)
  unless a[i] == [0]
    hash[i] = a[i]
    i+= 1
  else
    puts "Plesae input the number , not only zero"
  end
  puts "Your current matrix is :"
  (0..hash.length - 1).each do |l|
    (0..hash[l].length - 1).each do |n|
      print  hash[l][n] == nil ? "| | " : "|#{hash[l][n]}| "
    end
    print "\n"
  end
end while input != "exit"

#
