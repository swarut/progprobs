require './merge_two_sorted_list'
describe MergeTwoSortedList do

  describe 'merge' do
    # it 'merges two list (1)' do
    #   list1 = ListNode.new(-9)
    #   list1.next = ListNode.new(3)
    #   list2 = ListNode.new(5)
    #   list2.next = ListNode.new(7)

    #   merged_list = MergeTwoSortedList.do_merge(list1, list2)

    #   expect(MergeTwoSortedList.print_list(merged_list)).to eq('-9 => 3 => 5 => 7 => ')
    # end

    # it 'merges two list (2)' do
    #   list1 = ListNode.new(1)
    #   list1.next = ListNode.new(2)
    #   list1.next.next = ListNode.new(4)
    #   list2 = ListNode.new(1)
    #   list2.next = ListNode.new(3)
    #   list2.next.next = ListNode.new(4)

    #   merged_list = MergeTwoSortedList.do_merge(list1, list2)

    #   expect(MergeTwoSortedList.print_list(merged_list)).to eq('1 => 1 => 2 => 3 => 4 => 4 => ')
    # end

    it 'merges two list (3)' do
      list1 = ListNode.new(-7)
      list2 = ListNode.new(-10)
      list2.next = ListNode.new(-10)
      list2.next.next = ListNode.new(-9)
      list2.next.next.next = ListNode.new(-4)
      list2.next.next.next.next = ListNode.new(1)
      list2.next.next.next.next.next = ListNode.new(6)
      list2.next.next.next.next.next.next = ListNode.new(6)

      merged_list = MergeTwoSortedList.do_merge(list2, list1)
      # merged_list = MergeTwoSortedList.do_merge(list1, list2)

      expect(MergeTwoSortedList.print_list(merged_list)).to eq('-10 => -10 => -9 => -7 => -4 => 1 => 6 => 6 => ')
      puts "output = " + MergeTwoSortedList.print_list(merged_list)
    end

  end

end


[-10,-10,-9,-4,1,6,6]
[-7]
