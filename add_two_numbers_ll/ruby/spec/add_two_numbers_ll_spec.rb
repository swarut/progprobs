require './add_two_numbers_ll'
describe AddTwoNumbersLl do
  before do
    @atm = AddTwoNumbersLl.new
  end

  describe 'add_two_numbers' do
    context 'when two numbers have the same length' do
      before do
        @l1_1 = NodeList.new(1)
        @l1_2 = NodeList.new(2)
        @l1_3 = NodeList.new(3)
        @l2_1 = NodeList.new(4)
        @l2_2 = NodeList.new(5)
        @l2_3 = NodeList.new(6)
        @l1_1.next = @l1_2
        @l1_2.next = @l1_3
        @l2_1.next = @l2_2
        @l2_2.next = @l2_3
      end

      it 'returns new linklist that represents the summation of two numbers' do

        expect(@atm.add_two_numbers()).to eq()

      end
    end

    context 'when two numbers have different length' do
      it 'returns new linklist that represents the summation of two numbers' do
        expect(@atm.add_two_numbers()).to eq()

      end
    end

  end

end
