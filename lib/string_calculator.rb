class StringCalculator
  def self.add(input)
    return 0 if input.empty? 
    
    input.split(',').inject(0) { |sum, number| sum + number.to_i }
  end
end