require './valid_parentheses'
describe ValidParentheses do
  describe 'self.valid_parentheses' do
    it 'validates parentheses' do
      expect(ValidParentheses.valid_parentheses('()')).to eq(true)
      expect(ValidParentheses.valid_parentheses('()[]{}')).to eq(true)
      expect(ValidParentheses.valid_parentheses('()[')).to eq(false)
      expect(ValidParentheses.valid_parentheses(']()')).to eq(false)
      expect(ValidParentheses.valid_parentheses('[()')).to eq(false)
      expect(ValidParentheses.valid_parentheses('[(])')).to eq(false)
    end
  end

end
