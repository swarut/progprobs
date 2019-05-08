require './regular_expression_matching'
describe RegularExpressionMatching do
  before do
    @rem = RegularExpressionMatching.new
  end

  describe 'match' do
    context 'with single character-only pattern' do
      let(:pattern) {'a'}

      context 'given the right string' do
        it 'returns true' do
          expect(@rem.match(pattern, 'a')).to be true
        end
      end

      context 'given the incorrect string' do
        it 'return false' do
          expect(@rem.match(pattern, 'aaa')).to be false
        end
      end
    end

    # context 'with two character-only pattern' do
    #   let(:pattern) {'aa'}

    #   context 'given the right string' do
    #     it 'returns true' do
    #       expect(@rem.match(pattern, 'aa')).to be true
    #     end
    #   end

    #   context 'given the incorrect string' do
    #     it 'return false' do
    #       expect(@rem.match(pattern, 'a')).to be false
    #     end
    #   end
    # end
  end

end
