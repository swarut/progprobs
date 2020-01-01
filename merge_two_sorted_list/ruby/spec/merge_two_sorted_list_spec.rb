require './merge_two_sorted_list'

describe MergeTwoSortedList do


  describe 'merge' do
    it 'merges two list (1)' do
      # assert_list_merge([1], [], '1 => ')
      # assert_list_merge([], [2], '2 => ')
      # assert_list_merge([1], [2], '1 => 2 => ')
      # assert_list_merge([2], [1], '1 => 2 => ')

      # assert_list_merge([1], [2, 3], '1 => 2 => 3 => ')
      # assert_list_merge([2], [1, 3], '1 => 2 => 3 => ')
      # assert_list_merge([3], [1, 2], '1 => 2 => 3 => ')
      assert_list_merge([1, 2], [3], '1 => 2 => 3 => ')
      # assert_list_merge([1, 3], [2], '1 => 2 => 3 => ')
      # assert_list_merge([2, 3], [1], '1 => 2 => 3 => ')
      # assert_list_merge([1, 2, 3], [], '1 => 2 => 3 => ')
      # assert_list_merge([], [1, 2, 3], '1 => 2 => 3 => ')

      # assert_list_merge([1, 10], [2, 4], '1 => 2 => 4 => 10 => ')
      # assert_list_merge([2, 4], [1, 10], '1 => 2 => 4 => 10 => ')

      # assert_list_merge([1, 5], [2, 8], '1 => 2 => 5 => 8 => ')
      # assert_list_merge([2, 8], [1, 5], '1 => 2 => 4 => 10 => ')
    end

    # it 'merges two list (2)' do
    #   assert_list_merge([], [2], '2 => ')
    # end

    # it 'merges two list (3)' do
    #   assert_list_merge([1], [2], '1 => 2 => ')
    # end

    # it 'merges two list (4)' do
    #   assert_list_merge([2], [1], '1 => 2 => ')
    # end

    # it 'merges two list (1)' do
    #   assert_list_merge([-9, 3], [5, 7], '-9 => 3 => 5 => 7 => ')
    # end

    # it 'merges two list (2)' do
    #   assert_list_merge([1, 2, 4], [1, 3, 4], '1 => 1 => 2 => 3 => 4 => 4 => ')
    # end

    # it 'merges two list (3)' do
    #   assert_list_merge([-7], [-10, -10 -9, 4, 1, 6, 6], '-10 => -10 => -9 => -7 => -4 => 1 => 6 => 6 => ')
    # end

  end

end

def assert_list_merge(arr1, arr2, result)
  list1 = ListNode.list_from_array(arr1)
  list2 = ListNode.list_from_array(arr2)

  merged_list = MergeTwoSortedList.do_merge(list1, list2)
  expect(MergeTwoSortedList.print_list(merged_list)).to eq(result)
end
