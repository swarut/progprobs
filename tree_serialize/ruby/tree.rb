class Tree
  attr_accessor :left, :right, :parent, :val
  def initialize(value, left: nil, right: nil)
    @val = value
    add_left(left) if left
    add_right(right) if right
  end

  def add_left(left)
    @left = left
    @left.parent = self
  end

  def add_right(right)
    @right = right
    @right.parent = self
  end
end
