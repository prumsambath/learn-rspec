require 'caesar_cipher'

describe CaesarCipher do
  describe ".encrypt" do
    it "encrypts the string by shifting right by the given number" do
      expect(CaesarCipher.encrypt("What a string!", 5)).to eq("Bmfy f xywnsl!")
    end
    
    it "shifts right each character 3 times if without the given number" do
      expect(CaesarCipher.encrypt("abc")).to eq("def")
    end
    
    it "moves back to the beginning letters if the shifting passes the last letters" do
      expect(CaesarCipher.encrypt("xyz", 4)).to eq("bcd")
    end
    
    it "shifts letters by case" do
      expect(CaesarCipher.encrypt("aBC", 4)).to eq("eFG")
    end
    
    it "does not shift the non-alphabet" do
      expect(CaesarCipher.encrypt("a & b!", 4)).to eq("e & f!")
    end
    
    it "shifts backward with the negative number" do
      expect(CaesarCipher.encrypt("abc", -3)).to eq("xyz")
    end
  end
end