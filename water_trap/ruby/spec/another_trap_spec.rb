require './another_trap'
describe AnotherTrap do
  before do
    @trap = AnotherTrap.new
  end

  describe 'count_inbetween_zero' do
    it 'counts number of zero occurence between 1' do
      expect(@trap.count_inbetween_zero([1, 0, 0, 1])).to eq(2)
      expect(@trap.count_inbetween_zero([1, 0, 1, 0, 1])).to eq(2)
      expect(@trap.count_inbetween_zero([1, 0, 1, 0, 0, 1])).to eq(3)
      expect(@trap.count_inbetween_zero([1, 0, 1])).to eq(1)
      expect(@trap.count_inbetween_zero([0, 1, 0, 1])).to eq(1)
      expect(@trap.count_inbetween_zero([1, 0, 1, 0])).to eq(1)
    end
  end

  describe 'slice_pane' do
    it 'slices each element in array and return new array of slices' do
      expect(@trap.slice_pane([0, 0, 0])).to eq []
      expect(@trap.slice_pane([1, 1, 1])).to eq [[1, 1, 1]]
      expect(@trap.slice_pane([2, 2, 2])).to eq [[1, 1, 1], [1, 1, 1]]
      expect(@trap.slice_pane([2, 3, 2])).to eq [[1, 1, 1], [1, 1, 1], [0, 1, 0]]
      expect(@trap.slice_pane([3, 2, 3])).to eq [[1, 1, 1], [1, 1, 1], [1, 0, 1]]
      expect(@trap.slice_pane([4, 2, 3])).to eq [[1, 1, 1], [1, 1, 1], [1, 0, 1], [1, 0, 0]]
      expect(@trap.slice_pane([4, 0, 0, 3])).to eq [[1, 0, 0, 1], [1, 0, 0, 1], [1, 0, 0 ,1], [1, 0, 0, 0]]
    end
  end

  describe 'trap' do
    it 'returns total trapped water volumne' do
      expect(@trap.trap([0,1,0,2,1,0,1,3,2,1,2,6])).to eq 9
      expect(@trap.trap([6,1,0,2,1,0,1,3,2,1,2,6])).to eq 47
      expect(@trap.trap([1,7,8])).to eq 0
      expect(@trap.trap([0,1,0,2,1,0,1,3,2,1,2,1])).to eq 6
      expect(@trap.trap([4,2,3])).to eq 1
      expect(@trap.trap([5,5,1,7,1,1,5,2,7,6])).to eq 23
      expect(@trap.trap([4,9,4,5,3,2])).to eq 1
      expect(@trap.trap([9,6,8,8,5,6,3])).to eq 3
      expect(@trap.trap([9,6,8,8,5,6,3])).to eq 3
    end
  end

  describe 'slice_single_pane_with_offset' do
    it 'returns a slice of elements in array from a given offset' do
      expect(@trap.slice_single_pane_with_offset([0, 0, 0], 0)).to eq []
      expect(@trap.slice_single_pane_with_offset([1, 1, 1], 0)).to eq [1, 1, 1]
      expect(@trap.slice_single_pane_with_offset([0, 0, 0], 1)).to eq []
      expect(@trap.slice_single_pane_with_offset([1, 1, 1], 1)).to eq []
      expect(@trap.slice_single_pane_with_offset([1, 1, 1], 2)).to eq []
      expect(@trap.slice_single_pane_with_offset([2, 2, 2], 1)).to eq [1, 1, 1]
      expect(@trap.slice_single_pane_with_offset([3, 2, 2], 2)).to eq [1, 0, 0]
      expect(@trap.slice_single_pane_with_offset([4, 10, 40, 2], 40)).to eq []
      expect(@trap.slice_single_pane_with_offset([4, 10, 40, 2], 39)).to eq [0, 0, 1, 0]
    end
  end
end
