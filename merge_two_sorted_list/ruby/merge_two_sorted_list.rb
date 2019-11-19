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
