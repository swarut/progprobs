require './tree_serialize'
require './tree'
describe TreeSerialize do
  before do
    @tree_serialize = TreeSerialize.new
  end

  describe 'serialize' do
    it 'works correctly' do
      tree = build_simple_tree
      expect(@tree_serialize.serialize(tree)).to eq("2,3,1")
    end
  end

end

def build_simple_tree
  t1 = Tree.new(1)
  t2 = Tree.new(2)
  t3 = Tree.new(3)
  t1.add_left(t2)
  t1.add_right(t3)
end
