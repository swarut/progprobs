require './remove_duplicated_from_sorted_array'
describe RemoveDuplicatedFromSortedArray do
  before do
    @remove_duplicated_from_sorted_array = RemoveDuplicatedFromSortedArray.new
  end

  describe 'solve' do
    it 'solves' do
      input = [1, 2, 3]
      expect(@remove_duplicated_from_sorted_array.solve(input)).to eq(3)

      input = [1, 1, 2, 3]
      expect(@remove_duplicated_from_sorted_array.solve(input)).to eq(3)
      puts "input = #{input}"

      # input = [1, 2, 2, 3]
      # expect(@remove_duplicated_from_sorted_array.solve(input)).to eq(3)

      # input = [1, 2, 3, 3]
      # expect(@remove_duplicated_from_sorted_array.solve(input)).to eq(3)

      # input = [1, 1, 1, 1]
      # expect(@remove_duplicated_from_sorted_array.solve(input)).to eq(1)
    end
  end

end