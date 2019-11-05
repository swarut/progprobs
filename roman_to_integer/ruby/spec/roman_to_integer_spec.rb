require './roman_to_integer'
describe RomanToInteger do

  describe 'self.parse' do
    it 'converts roman number to interger correctly' do
      expect(RomanToInteger.parse('I')).to eq(1)
      expect(RomanToInteger.parse('II')).to eq(2)
      expect(RomanToInteger.parse('III')).to eq(3)
      expect(RomanToInteger.parse('IV')).to eq(4)
      expect(RomanToInteger.parse('V')).to eq(5)
      expect(RomanToInteger.parse('VI')).to eq(6)
      expect(RomanToInteger.parse('VII')).to eq(7)
      expect(RomanToInteger.parse('VIII')).to eq(8)
      expect(RomanToInteger.parse('IX')).to eq(9)
      expect(RomanToInteger.parse('X')).to eq(10)
      expect(RomanToInteger.parse('LVIII')).to eq(58)
      expect(RomanToInteger.parse('MCMXCIV')).to eq(1994)

    end
  end

end
