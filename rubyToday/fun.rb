[1, 2, 3].inject([]) do |a, item|
  p a
  a<<item
end

# bigger or smaller game
number = Random.rand(4)
loop do 
  input = gets.chomp.to_i 
  p "too big" if input > number
  p "too small" if input < number
  break if input == number
end
p "correct"


# puts "Hello, world."
# 
# puts "Hello, Ruby.".index("Ruby.")
# 
# 10.times do 
#   puts("Steven")
# end
# 
# 10.times do |i|
#  puts "This is a sentence number #{i}"
# end


