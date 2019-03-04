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
end