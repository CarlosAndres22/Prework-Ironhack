# Function that receives a sentence and returns an array sorted alphabetically. 
#Ignoring case and punctuation.

def word_sort(sentence)
	
	# require 'pry'
	word_split = sentence.gsub(/[!@#$%^&*()-=_+|;':",.<>?']/, '')  # Removes punctuation marks.
	word_array= word_split.split(" ")    # Creates an array of words with the split sentence.
	word_array=word_array.sort {|a,b| a.casecmp(b)}   #Sort alphabeticaly and case insensitively elements of the array.
	# binding.pry
	puts "#{word_array}"
end


word_sort("Have a nice day.")
word_sort("Fools fall for foolish follies." )
word_sort("Ruby is a fun language!")