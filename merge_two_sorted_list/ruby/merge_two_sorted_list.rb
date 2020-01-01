class MergeTwoSortedList

  @@start_node = nil

  def self.do_merge(list1, list2)
    return list1 if (!list2 || !list2.val)
    return list2 if (!list1 || !list1.val)
    if (list1 && list1.val) && (list2 && list2.val)
        @@start_node = list1.val < list2.val ? list1 : list2
    else
        return ListNode.new(nil)
    end
    merge(list1, list2)
    @@start_node
  end

  def self.sort(list)
    return if !list.next
    while list.next do
      puts "compare [#{list.val} with [#{list.next.val}]]"
      if list.next.val < list.val
        tmp = list.next.val
        list.next.val = list.val
        list.val = tmp
        list = list.next
      else
        return
      end
    end
  end

  def self.merge(list1, list2)
    puts "L1 :: #{print_list(list1)}"
    puts "L2:: #{print_list(list2)}"
    puts "PRODUCT :: #{print_list(@@start_node)}"

    return sort(list1) if !list2
    return sort(list2) if !list1

    if list1.val < list2.val
      puts "COND1"
      tmp = list1.next
      # list1.next = list2
      # puts "=========="
      # merge(tmp, list2)
      puts "=========="
      merge(tmp, list2)

    else
      puts "COND2"
      tmp = list1.next
      list1.next = list2.next
      list2.next = list1
      puts "=========="
      merge(tmp, list1)
    end
    # while list1.val && list2.val do
    #   if list1.val < list2.val
    #     tmp = list1.next
    #     list1.next = list2
    #     list1 = tmp
    #   else
    #     tmp = list1.val
    #     tmp_list1_next = list1.next
    #     list1.next = list2.next
    #     list2.next = list1
    #     list1.val = list2
    #     list2.val = tmp
    #     list1 = tmp_list1_next
    #     list2 = list2.next
    #   end
    # end


  end

  def self.print_list(list)
    out = ''
    while list
      out << "#{list.val} => "
      list = list.next
    end
    out
  end

end


class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end

  def self.list_from_array(arr)
    list = ListNode.new(nil)
    cursor = list
    arr.each_with_index do |item, index|
      cursor.val = item
      if index != (arr.length - 1)
        cursor.next = ListNode.new(nil)
        cursor = cursor.next
      end
    end
    list
  end
end
