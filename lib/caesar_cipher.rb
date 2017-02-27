class CaesarCipher
  def self.encrypt(st, key=3)
    result = ''
    alphabet = ('a'..'z').to_a
    st.each_char do |c|
      if alphabet.include?(c.downcase)
        index = alphabet.index(c.downcase) + key
        index = (index - 25) - 1 if index > 25
        result << (c == c.upcase ? alphabet[index].upcase : alphabet[index])
      else
        result << c
      end
    end
    result
  end
end