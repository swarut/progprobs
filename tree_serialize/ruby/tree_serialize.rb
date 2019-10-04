class TreeSerialize
  def serialize(tree)
    return tree.val if !(tree.left || tree.right)
    return "#{serialize(tree.left)},#{serialize(tree.right)},#{tree.val}"
  end

  def deserialize(tree_string)
  end
end
