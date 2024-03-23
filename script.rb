#goes in as a parameter of caesar_cipher method: shift_factor = 3

def caesar_cipher (string, shift_factor = 5)
  codepoints_array = string.codepoints #returns array of integer codepoint values
  
  new_letter_array = codepoints_array.map do |codepoint|
    new_codepoint = codepoint + shift_factor #change its codepoint by shift_factor positions
    new_letter = new_codepoint.chr #convert from code point array to char array
    new_letter #return array of new letter, like ["K", "h", "o", "o", "r"]
  end
  new_letter_array.map! do |letter| #replaces % with space (beware, destructive method map! in use)
    if letter == "%"
      " "
    else
      letter
    end
  end
  new_letter_array.join #convert from array to string (join function)
end

puts caesar_cipher("What a string")

#Account for these:
    #1. spaces! (% should be " ")
    #2. wrap from a to z AND z to a