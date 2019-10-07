require './string_permutation_in_bigger_string'
describe StringPermutationInBiggerString do
  before do
    @string_permutation_in_bigger_string = StringPermutationInBiggerString.new
  end

  describe 'rep' do
    it 'creates hash representation' do
      expect(@string_permutation_in_bigger_string.rep('abc')).to eq(
        {
          'a' => 1,
          'b' => 1,
          'c' => 1
        }
      )
    end

    it 'gives correct result' do
      expect(@string_permutation_in_bigger_string.string_permutation_in_bigger_string('abc', 'abcbca')).to eq(
        [
          [0, 'abc'],
          [3, 'bca']
        ]
      )
    end
  end

end
