require 'pry'

def solve_cipher(word, n)
  new_word = ""
  word.each_char do |i|
   if i== " "
    a=" "
  elsif i.ord <= 99 && i.ord >= 90
   a=((i.ord + n) + 26).chr
 else 
   a=(i.ord + n).chr 
  end
new_word+=a
  
  end
  puts new_word
end
solve_cipher("ifmmp", -1)