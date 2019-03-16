require './longest_palindromic_string'
describe LongestPalindromicString do
  before do
    @lps = LongestPalindromicString.new
  end

  describe 'longest_palindrome' do
    context 'string contains no character' do
      it 'returns empty string' do
        expect(@lps.longest_palindrome('')).to eq('')
      end
    end

    context 'string contains one character' do
      it 'returns that string' do
        expect(@lps.longest_palindrome('a')).to eq('a')
      end
    end

    context 'string contains two characters' do
      context 'both characters are the same' do
        it 'returns that string' do
          expect(@lps.longest_palindrome('aa')).to eq('aa')
        end
      end
      context 'both characters are different' do
        it 'returns the first chracter' do
          expect(@lps.longest_palindrome('ab')).to eq('a')
        end
      end
    end

    it 'returns the longest palindromic substring' do
      expect(@lps.longest_palindrome('aabac')).to eq('aba')
      expect(@lps.longest_palindrome('aabaaabaaa')).to eq('aabaaabaa')
      expect(@lps.longest_palindrome('ccc')).to eq('ccc')
      expect(@lps.longest_palindrome('babad')).to eq('bab')
      expect(@lps.longest_palindrome('abb')).to eq('bb')
      expect(@lps.longest_palindrome('ccd')).to eq('cc')
      expect(@lps.longest_palindrome('caba')).to eq('aba')
    end
  end

  describe 'palindrome_string' do
    context 'general cases' do
      it 'returns palindrom string' do
        expect(@lps.palindrome_string('aab'.split(''), 1)).to eq('aa')
        expect(@lps.palindrome_string('aba'.split(''), 1)).to eq('aba')
        expect(@lps.palindrome_string('abaa'.split(''), 1)).to eq('aba')
        expect(@lps.palindrome_string('aabaa'.split(''), 1)).to eq('aa')
        expect(@lps.palindrome_string('aabaa'.split(''), 2)).to eq('aabaa')
        expect(@lps.palindrome_string('caabaa'.split(''), 2)).to eq('aa')
        expect(@lps.palindrome_string('caabaa'.split(''), 3)).to eq('aabaa')
        expect(@lps.palindrome_string('caabaad'.split(''), 3)).to eq('aabaa')
        expect(@lps.palindrome_string('xcaabaadz'.split(''), 4)).to eq('aabaa')
        expect(@lps.palindrome_string('xcaabbaadz'.split(''), 4)).to eq('aabbaa')
        expect(@lps.palindrome_string('ccc'.split(''), 1)).to eq('ccc')
        expect(@lps.palindrome_string('aaaa'.split(''), 1)).to eq('aaaa')
        expect(@lps.palindrome_string('aaaa'.split(''), 1)).to eq('aaaa')
      end
    end

    context 'string that has one characters at the center for palindrome substring' do
      it 'returns palindrome string' do
        expect(@lps.palindrome_string('aba'.split(''), 1)).to eq('aba')
      end
    end

    context 'string that has more than one characters at the center for palindrome substring' do
      it 'returns palindrome string' do
        expect(@lps.palindrome_string('abba'.split(''), 1)).to eq('abba')
      end
    end

  end

end
