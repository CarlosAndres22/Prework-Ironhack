def sorting(something)
words= something.gsub(/[^a-z0-9\s]/i, '')
words_array = words.split(" ")

puts words_array
end

sorting "Have a nice day."