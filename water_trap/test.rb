require "minitest/autorun"
require "./trap"

describe Trap do
  before do
    @trap = Trap.new
  end

  describe 'get_peaks' do
    it 'returns all peaks' do
      assert(@trap.get_peaks([1,2,3,4])).to_equal([])
    end
  end
end
