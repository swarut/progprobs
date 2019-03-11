# First thought:
# Construct the binary tree from input, the tree node represents value and array of indices.
# The tree needs to preserve a property that for any of parent and leave node, there should not be any available value inbetween.
# After construction, for each pair of nodes, create a valid permutation from indices that satisfies the rule (index A < index B).
# From all permutation, find the one with largest distance.


# T_T
# I could not write the tree that preserves such property in time
# T_T
# Thank for the test, it's fun :) :bow:

def solution(arr)

end

# return array of idices pair
def find_adjacent_pairs(arr)

end

# pair is a tuple of index like [1, 2]
def is_valid_adjacent_pair(pair)
  pair.first < pair.last
end

# pair is a tuple of index like [1, 2]
def distance(pair)
  (pair.first - pair.last).abs
end


class Tree
  attr_accessor :root

  def initialize
    @root = nil
  end

  def parse(arr)
    arr.each_with_index do |value, index|
      puts "Adding #{value}, index #{index}"
      add_node(value, index)
    end
  end

  # place the node in the tree
  def add_node(value, index)
    if (@root == nil)
      node = Node.new(value, index)
      @root = node
    else
      current_node = root
      loop do
        if (current_node.value == value)
          # if the node with same value is found, add index
          puts "Found existing node, adding index"
          current_node.add_index(index)
          break
        end

        if (value < current_node.value)
          next_node = current_node.left
          if !next_node
            node = Node.new(value, index)
            current_node.left = node
            break
          else
            if (value > next_node.value)
              node = Node.new(value, index)
              node.left = next_node
              current_node.left = node
              break
            else
              current_node  = next_node
            end
          end
        elsif (value > current_node.value)
          next_node = current_node.right
          if !next_node
            node = Node.new(value, index)
            current_node.right = node
            break
          else
            if (value < next_node.value)
              node = Node.new(value, index)
              node.right = next_node
              current_node.right = node
              break
            else
              current_node = next_node
            end
          end
        end
      end
      current_node
    end

  end

  # traverse to target node with specified value, return that node if found, nil if not
  def traverse(value)
    current_node = root
    loop do
      break if current_node.value == value

      if (value < current_node.value)
        next_node = current_node.left
        if next_node != nil
          if next_node.value < value
            # insert inbetween
          elsif next_node.value > value
            # insert leave
            current_node == current_node.left
          end

        end
      elsif (value > current_node.value)
        if current_node.right != nil
          current_node == current_node.right
        end
      end
    end
    current_node
  end

end

class Node
  attr_accessor :value, :indices, :left, :right
  def initialize(value, indices)
    self.value = value
    self.indices = [indices]
  end

  def add_index(i)
    self.indices.push(i)
  end
end