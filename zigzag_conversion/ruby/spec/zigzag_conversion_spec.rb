require './zigzag_conversion'

describe ZigzagConversion do
  before do
    @zc = ZigzagConversion.new
  end

  describe 'convert' do
    it 'returns converted string' do
      expect(@zc.convert('PAYPALISHIRING', 3)).to eq('PAHNAPLSIIGYIR')
      expect(@zc.convert('PAYPALISHIRING', 4)).to eq('PINALSIGYAHRPI')
    end
  end

end
