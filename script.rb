#goes in as a parameter of caesar_cipher method: shift_factor = 3

def caesar_cipher (string, shift_factor = 5)
  codepoints_array = string.codepoints #split characters, convert to codepoint value, 
  # return array of integer codepoint values
  new_letter_array = codepoints_array.map do |codepoint|
    new_codepoint = codepoint + shift_factor #change its codepoint by shift_factor positions
    new_letter = new_codepoint.chr #convert from code point array to char array
    new_letter #return array of new letter, like ["K", "h", "o", "o", "r"]
    #replace "%" elements with " "
  end
  newer_letter_array = new_letter_array.each {|letter| " " if letter == "%"}
  newer_letter_array.join #convert from array to string (join function)
end

puts caesar_cipher("What a string")

#Account for these:
    #1. spaces! (% should be " ")
    #2. wrap from a to z AND z to a