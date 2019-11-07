require './longest_common_prefix'
describe LongestCommonPrefix do

  describe 'l' do
    it 'returns longest common prefix' do
      expect(LongestCommonPrefix.l(['aa', 'aaab'])).to eq('aa')
      expect(LongestCommonPrefix.l(['aa', 'b'])).to eq('')
      expect(LongestCommonPrefix.l(['aa', 'aaaa', 'bba'])).to eq('')
    end
  end

end
