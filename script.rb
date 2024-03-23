require 'pry-byebug'

#goes in as a parameter of caesar_cipher method: shift_factor = 3

def caesar_cipher (string, shift_factor = 5)
  codepoints_array = string.codepoints #returns array of integer codepoint values

  new_letter_array = codepoints_array.map do |codepoint|
    if codepoint.between?(65, 90) == true    #allcaps check
      new_codepoint = codepoint + shift_factor
      if new_codepoint > 90 #is new codepoint out of boundary?
        add_start_position = shift_factor - (91 - codepoint)
        new_codepoint = 65 + add_start_position
        new_codepoint        
      else
        new_codepoint
      end
    elsif codepoint.between?(97, 122) == true   #lowercase check
      new_codepoint = codepoint + shift_factor
      if new_codepoint > 122 #is new codepoint out of boundary?
        add_start_position = shift_factor - (123 - codepoint)
        new_codepoint = 97 + add_start_position
        new_codepoint
      else
        new_codepoint
      end
    else
      new_codepoint = codepoint
    end

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

puts caesar_cipher("What a string!", 5)

#Accounts for these:
    #1. spaces! (% should be " ")
    #2. wrap from a to z AND z to a
    #3. punctuation like "!" remains punctuation