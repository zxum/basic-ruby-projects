
#modulus for negative shifts
  def mod(n,m)
    (n % m + m) % m
  end
  
#sets the starting codepoint for lowercase letters and uppercase letters
  def codegroup(code)
    if code < 97 
      65
    else 
      97
    end
  end

#returns the character with the shift applied, only to letters, not special characters or white spaces
  def char_shift(char,shift)
    code = char.codepoints[0]
    if ((code>=65 && code<=90) || (code>=97 && code<=122))
      shifted = mod(code + shift - codegroup(code),26)  + codegroup(code);
      return shifted.chr
    else
      return char
    end
  end
  
#takes the string, splits it up into characters, applies the shift to each character, then joins it back together. 
  def caesar(str,shift)
    str_split = str.split("")
    str_shift = str_split.map{|char| char_shift(char, shift)}
    str_final = str_shift.join("")
  end
  
  puts caesar("What a string!", 50)