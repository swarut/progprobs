class Linklist
  attr_accessor :node
  def initialize(*items)
    items.each do |item|
      append_node(item)
    end
  end

  def append_node(item)
    if !@node
      @node = LinklistNode.new(item)
    else
      last_node = traverse_to_last(@node)
      new_node = LinklistNode.new(item)
      last_node.next_node = new_node
    end
  end

  def traverse(item, node)
    return node if (node.value == item) || !node.next_node
    return traverse(item, node.next_node)
  end

  def traverse_to_last(node)
    return node if !node.next_node
    return traverse_to_last(node.next_node)
  end

  def print
    to_s(@node)
  end

  def to_s(node = nil)
    if !node
      puts ""
      return
    end
    node.print_node
    to_s(node.next_node)
  end
end

class LinklistNode
  attr_accessor :value, :next_node
  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end

  def print_node
    print "#{@value} -> "
  end

  def to_s
    print "[#{@value}]"
  end
end

l = Linklist.new(1, 2, 3, 4, 5)
l.print

