# https://leetcode.com/problems/add-two-numbers/

require './list_node'
class AddTwoNumbersLl
  def add_two_numbers(l1, l2)
    result_stack = []
    carry = 0
    last_node = nil
    i = 0
    loop do
        break if (!l1 || !l2) && (carry == 0)
        v1 = l1 ? l1.val : 0
        v2 = l2 ? l2.val : 0
        v = v1 + v2 + carry
        carry = v >= 10 ? 1 : 0
        v -= 10 if v >= 10
        node = ListNode.new(v)
        if result_stack.length != 0
            result_stack.last.next = node
        end
        result_stack.push(node)

        l1 = l1.next if l1
        l2 = l2.next if l2

    end

    last_node = l1 || l2 if !l1 || !l2

    result_stack.last.next = last_node if last_node
    result_stack.first

  end

  def add_two_numbers_v2(l1, l2)
    i = 0
    sum = 0
    loop do
        break if !l1 && !l2
        v1 = l1 ? l1.val : 0
        v2 = l2 ? l2.val : 0
        v1 = v1 * (10 ** i) if i > 0
        v2 = v2 * (10 ** i) if i > 0
        puts "Loop :#{i}, v1 = #{v1}, v2 = #{v2}"
        sum = sum + v1 + v2
        i = i + 1

        l1 = l1.next if l1
        l2 = l2.next if l2
    end

    sum.to_s.reverse.split("").inject({last_node: nil, first_node: nil}) do |acc, i|
        prev_node = acc[:last_node]
        node = ListNode.new(i)
        acc[:first_node] = node if !acc[:first_node]
        prev_node.next = node if prev_node
        acc[:last_node] = node
        acc
    end[:first_node]
  end
end
