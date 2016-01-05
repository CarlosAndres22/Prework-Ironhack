# A program that accept a word or sentence and make a shift to the left or to
# the right, applying the encryption technique named Caesar_cipher.
  
# First Ieration (1 left shift)

def solve_cipher(name)
  
    my_string=""
    name.downcase!        #Convert word in lower case in case there is a capital letter
    array_split= name.split("")       #Split sentence an place each letter inside an array.
    
    
    for element in array_split    #Iterate thorough array
      
      
      char_ord=element.ord      # Return the Integer ordinal of a one-character string.
      
      # require 'pry'
      if char_ord == 97     # if the variable has the letter "a"
        char_ord=122     # variable now has the integer value for letter z
      # binding.pry
      else
        char_ord=char_ord-1
      end
    
    char_ord =char_ord.chr # Return the character string of the integer ordinal. 
    my_string<<char_ord
       
  end
  
  puts " #{my_string}" 
  
end
  

puts "First iteration: "
solve_cipher("ifmmp")
solve_cipher("LBSJO")


#Second Iteration(left of right shift of any size)

def solve_cipher(sentence, shifth)

  my_string=""
  sentence.downcase!
  array_split = sentence.gsub(/[!@#$%^&*()-=_+|;':",.<>?']/, '')  # Removes any punctuation added
    array_split= sentence.split("")
    
    
    for element in array_split

      char_ord=0 
      the_shift=0             
      char_ord=element.ord  
      
      if char_ord==32      
         my_string<<char_ord      #add the space to sentence and doesn't give problems with character 
         next                     # less than 97.
      else
        char_ord += shifth        #moves left if (-), otherwise moves right (+)
      end
      
      if char_ord <97               # if the integer is less that the integer value of letter "a" (left shift)
        the_shift= 97-char_ord-1  #How much is the shift from letter "a" to the left
      char_ord=122-the_shift    # Get the integer value from letter "z"
    elsif char_ord == 123         #If the integer value is 1 greater than integer value for "z"(rigth shift)
      char_ord ==97           # Place the integer value for letter "a".
    end
      
    if char_ord >122              #if integer value pass the value of the letter "z" (rigth shift)
      the_shift=char_ord-122-1   
      char_ord=97+the_shift     #shift from letter "z" to the right
    end
      char_ord =char_ord.chr        # Return the character string of the integer ordinal. 
    my_string<<char_ord
    end
  
  puts "#{my_string}"

end

puts "Second iteration: "
solve_cipher("pb uhdo qdph lv grqdog gxfn", -3)
solve_cipher("ebiil tloia", +3)
solve_cipher("this keeps the same",0)
solve_cipher("g yk fynnw",+2)
solve_cipher("vvvvv",+5)


#third iteration(default 3 left shift)

def solve_cipher(sentence)

  my_string=""
  sentence.downcase!
  array_split = sentence.gsub(/[!@#$%^&*()-=_+|;':",.<>?']/, '')  # Removes any punctuation added
    array_split= sentence.split("")
    
    
    for element in array_split

      char_ord=0 
      the_shift=0             
      char_ord=element.ord  
      
      if char_ord==32      
         my_string<<char_ord      #add the space to sentence and doesn't give problems with character 
         next                     # less than 97.
      else
        char_ord =char_ord-3       #moves 3 to the left.
      end
      
      if char_ord <97               # if the integer is less that the integer value of letter "a" (left shift)
        the_shift= 97-char_ord-1  #How much is the shift from letter "a" to the left
      char_ord=122-the_shift    # Get the integer value from letter "z"
    elsif char_ord == 123         #If the integer value is 1 greater than integer value for "z"(rigth shift)
      char_ord ==97           # Place the integer value for letter "a".
    end
      
    
      char_ord =char_ord.chr        # Return the character string of the integer ordinal. 
    my_string<<char_ord
    end
  
  puts "#{my_string}"

end

puts "Third iteration: "
solve_cipher("pb uhdo qdph lv grqdog gxfn")
solve_cipher("PB UHDO QDPH LV GRQDOG GXFN")