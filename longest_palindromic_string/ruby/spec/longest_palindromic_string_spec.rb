require './longest_palindromic_string'
describe LongestPalindromicString do
  before do
    @lps = LongestPalindromicString.new
  end

  describe 'longest_palindrome' do
    it 'returns the longest palindromic substring' do
      expect(@lps.longest_palindrome('')).to eq('')
      expect(@lps.longest_palindrome('a')).to eq('a')
      expect(@lps.longest_palindrome('aa')).to eq('aa')
      expect(@lps.longest_palindrome('ab')).to eq('a')
      expect(@lps.longest_palindrome('aabac')).to eq('aba')
      expect(@lps.longest_palindrome('aabaaabaaa')).to eq('aaabaaa')

    end
  end

end
