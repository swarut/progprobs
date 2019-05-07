require './string_to_integer'
describe StringToInteger do
  before do
    @sti = StringToInteger.new

  end
  describe 'string_to_integer' do
    it 'returns correct length' do
      expect(@lstnr.length_of_longest_substring("dvdf")).to eq(3)
      expect(@lstnr.length_of_longest_substring("aaaabadefcdheeeeabcdefghij")).to eq(10)
      expect(@lstnr.length_of_longest_substring("abcabcbb")).to eq(3)
      expect(@lstnr.length_of_longest_substring("abba")).to eq(2)
      expect(@lstnr.length_of_longest_substring("cfxhowcgimmupeovulclalqcghiuaphcwfkn")).to eq(10)
    end
  end

end
