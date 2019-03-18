require './single_element_in_sorted_array'
describe SingleElementInSortedArray do
  before do
    @seisa = SingleElementInSortedArray.new
  end

  describe 'single_non_duplicate' do
    context 'input with 3 elements' do
      it 'returns single element' do
        expect(@seisa.single_non_duplicate([1,1,2])).to eq 2
      end
    end
  end
end
