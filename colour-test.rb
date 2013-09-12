require_relative 'lib/colour'

puts "My text is bold".bold
puts "My text is blue".blue
puts "My background is green with back text".bg_green
puts "My background is cyan with red text".red.bg_cyan
puts "My background is red with bold, green text".bold.green.bg_red