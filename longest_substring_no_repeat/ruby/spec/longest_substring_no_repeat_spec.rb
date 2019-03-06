require './longest_substring_no_repeat'
describe LongestSubstringNoRepeat do
  before do
    @lstnr = LongestSubstringNoRepeat.new
  end

  describe 'length_of_longest_substring' do
    it 'returns correct length' do
      expect(@lstnr.length_of_longest_substring("dvdf")).to eq(3)
      expect(@lstnr.length_of_longest_substring("aaaabadefcdheeeeabcdefghij")).to eq(10)
      expect(@lstnr.length_of_longest_substring("abcabcbb")).to eq(3)
      expect(@lstnr.length_of_longest_substring("abba")).to eq(2)
      expect(@lstnr.length_of_longest_substring("cfxhowcgimmupeovulclalqcghiuaphcwfkn")).to eq(10)
    end
  end

end
