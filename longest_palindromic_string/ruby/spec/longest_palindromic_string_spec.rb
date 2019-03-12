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
      expect(@lps.longest_palindrome('aabaaabaaa')).to eq('aabaaabaa')

    end
  end

  describe 'palindrome_string' do
    it 'returns palindrom string' do
      expect(@lps.palindrome_string('aab'.split(''), 1)).to eq('a')
      expect(@lps.palindrome_string('aba'.split(''), 1)).to eq('aba')
      expect(@lps.palindrome_string('abaa'.split(''), 1)).to eq('aba')
      expect(@lps.palindrome_string('aabaa'.split(''), 1)).to eq('a')
      expect(@lps.palindrome_string('aabaa'.split(''), 2)).to eq('aabaa')
      expect(@lps.palindrome_string('caabaa'.split(''), 2)).to eq('a')
      expect(@lps.palindrome_string('caabaa'.split(''), 3)).to eq('aabaa')
      expect(@lps.palindrome_string('caabaad'.split(''), 3)).to eq('aabaa')
      expect(@lps.palindrome_string('xcaabaadz'.split(''), 4)).to eq('aabaa')
    end
  end

end
