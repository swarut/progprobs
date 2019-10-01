require './substring_permutation_in_bigger_string'
describe SubstringPermutationInBiggerString do
  before do
    @substring_permutation_in_bigger_string = SubstringPermutationInBiggerString.new
  end

  describe 'char_lookup' do
    it 'creates lookup for each characters in the string' do
      expect(@substring_permutation_in_bigger_string.char_lookup('abc')).to eq(
        {'a' => true, 'b' => true, 'c' => true}
      )
    end
  end

  describe 'substring_permutation_in_bigger_string' do
    it 'finds all string permutations and their locations' do
      expect(@substring_permutation_in_bigger_string.substring_permutation_in_bigger_string('', 'abc')).to eq(
        {}
      )

      expect(@substring_permutation_in_bigger_string.substring_permutation_in_bigger_string('a', 'abc')).to eq(
        'a' => [0]
      )

      expect(@substring_permutation_in_bigger_string.substring_permutation_in_bigger_string('d', 'abc')).to eq(
        {}
      )

      expect(@substring_permutation_in_bigger_string.substring_permutation_in_bigger_string('ab', 'abc')).to eq(
        'a' => [0],
        'b' => [1],
        'ab' => [0]
      )

      expect(@substring_permutation_in_bigger_string.substring_permutation_in_bigger_string('abc', 'abc')).to eq(
        'ab' => [0],
        'bc' => [1],
        'abc' => [0],
        'a' => [0],
        'b' => [1],
        'c' => [2]
      )

      expect(@substring_permutation_in_bigger_string.substring_permutation_in_bigger_string('ce', 'abc')).to eq(
        'c' => [2]
      )


    end
  end
end
