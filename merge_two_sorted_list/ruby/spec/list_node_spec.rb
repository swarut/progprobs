require './merge_two_sorted_list'

describe ListNode do
  describe '#list_from_array' do
    it 'creates list from array' do
      l =  ListNode.list_from_array([1, 2, 3])
      expect(MergeTwoSortedList.print_list(l)).to eq("1 => 2 => 3 => ")
    end
  end
end
