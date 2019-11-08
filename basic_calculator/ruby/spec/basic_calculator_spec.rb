require './basic_calculator'
describe BasicCalculator do
  describe 'self.cal' do
    context 'without parentheses' do
      it 'calculates expression' do
        expect(BasicCalculator.cal('1+1')).to eq(2)
        expect(BasicCalculator.cal('1 + 1')).to eq(2)
        expect(BasicCalculator.cal('1 +1')).to eq(2)
        expect(BasicCalculator.cal('1+ 1')).to eq(2)
        expect(BasicCalculator.cal('1-1')).to eq(0)
        expect(BasicCalculator.cal('1 - 1')).to eq(0)
        expect(BasicCalculator.cal('1 -1')).to eq(0)
        expect(BasicCalculator.cal('1- 1')).to eq(0)

        expect(BasicCalculator.cal('1 + 1 +1')).to eq(3)
        expect(BasicCalculator.cal('1 + 1 + 1')).to eq(3)
        expect(BasicCalculator.cal('1 + 1 - 1')).to eq(1)

        expect(BasicCalculator.cal('1 + 10 - 2 - 4')).to eq(5)
      end
    end
    # context 'with parentheses' do
    #   it 'calculates expression' do
    #     expect(BasicCalculator.cal('(1+1)')).to eq(2)
    #     expect(BasicCalculator.cal('(1 + 1) + 2')).to eq(4)

    #   end
    # end
  end

end
