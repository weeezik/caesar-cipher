#split characters into array
# Example: ["H","e","l","l","o"]
#add 3 positions to each character's alphabetical position, output new array
# Example: ["K", "h", "o", "o", "r"]
#Rejoin array use .join method

def caesar_cipher (string, shift_factor = 3)
  codepoints_array = string.codepoints #identify each letter codepoint and return array
  codepoints_array.map do |codepoint_letter|
    new_codepoint = codepoint_letter + 3 #change its codepoint
    new_letter = new_codepoint.chr
    new_letter
  end
  #join function
     #return its new value
     #convert from code point array to char array
     #convert from array to string
   


end