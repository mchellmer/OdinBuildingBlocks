# This method takes in a string and shifts each letter by an integer factor
# caesar_cipher(string to be encrypted,integer factor)
def caesar_cipher(string, shift)
  # Set effective shift (for cases when over 26)
  eshift = shift % 26
  
  # Set up arrays to populate cipher
  ciphN = Array.new  # Logs ASCHII values of string components
  ciphN2 = Array.new # Logs ASCHII shifted values
  ciph = Array.new   # Logs final cipher
  skipN = [32,46,44,33] # List of values to ignore
  
  # Change each letter value in 'string' to ASCHII
  string.downcase.each_byte do |c|
    if skipN.include?(c)
      ciphN.push(c)
    else
      ciphN.push(c - eshift)
    end
  end
  
  # Institute a to z wrap
  ciphN.each do |c|
    if c < 97 && c > 70
      ciphN2.push(123 - (97 - c))
    else
      ciphN2.push(c)
    end
  end
  
  # Generate encrypted string
  ciphN2.each do |c|
    ciph.push(c.chr)
  end
  
  
  return ciph.join("")
end