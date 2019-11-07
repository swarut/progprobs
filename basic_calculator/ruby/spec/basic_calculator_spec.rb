require './basic_calculator'
describe BasicCalculator do
  describe 'self.cal' do
    context 'without parentheses' do
      it 'calculates expression' do
        expect(BasicCalculator.cal('1+1')).to eq(2)
        expect(BasicCalculator.cal('1 + 1')).to eq(2)
        expect(BasicCalculator.cal('1 +1')).to eq(2)
        expect(BasicCalculator.cal('1+ 1')).to eq(2)
      end
    end
    context 'with parentheses' do
      it 'calculates expression' do
        expect(BasicCalculator.cal('(1+1)')).to eq(2)
        expect(BasicCalculator.cal('(1 + 1) + 2')).to eq(4)

      end
    end
  end

end
