require './median_of_two_sorted_arrays'
describe MedianOfTwoSortedArray do
  before do
    @mtsa = MedianOfTwoSortedArray.new
  end

  describe 'find_median_sorted_arrays' do
    context 'two arrays are not overlapping' do
      context 'odd number of elements' do
        it 'returns correct length' do
          expect(@mtsa.find_median_sorted_arrays([1, 2], [3])).to eq 2
        end
      end
      context 'even number of elements' do
        it 'returns correct length' do
          expect(@mtsa.find_median_sorted_arrays([1, 2], [3, 4])).to eq 2.5
        end
      end
    end

    context 'two arrays are overlapping' do
      context 'both array have same median' do
        context 'both array have same length' do
          it 'returns correct length' do
            expect(@mtsa.find_median_sorted_arrays(
              [1, 2, 3, 4, 5],
              [1, 1, 3, 6, 7]
              [1, 1, 1, 2, 3, 3, 4, 5, 6, 7]
              )).to eq 3
          end
        end

        context 'both array do not have same length' do
          context 'odd number of total element' do
            it 'returns correct length' do
              expect(@mtsa.find_median_sorted_arrays(
                [1, 2, 3, 4, 5],     #2 (3) 2
                [1, 1, 2, 4, 7, 8]   #3 (3) 3
                [1, 1, 1, 2, 2, 3, 4, 4, 5, 7, 8]
                                x
               )).to eq 3
            end
          end
          context 'even number of total element' do
            it 'returns correct length' do
              expect(@mtsa.find_median_sorted_arrays(
                [1, 2, 3, 4, 6, 10, 12 ,14],  #4 (5) 4
                [1, 1, 3, 7, 7, 8]   #3 (5) 3
                # [1, 1, 1, 2, 3, 3, 4, 6, 7, 7, 8, 10, 12, 14] ->4

               )).to eq 4
            end
          end
        end
      end

      context 'both array have different median' do
        context 'both array have same length' do
          it 'returns correct length' do
            expect(@mtsa.find_median_sorted_arrays(
              [1, 2, 3, 4, 5],  # 2(3)2
              [1, 1, 4, 10, 20]  # 2(4)2
              #[1, 1, 1, 2, 3, 4, 4, 5, 10, 20]  -> 3.5
              )).to eq 3.5
          end
        end
      end

      context 'both array do not have same length' do
        context 'odd number of total element' do
          it 'returns correct length' do
            expect(@mtsa.find_median_sorted_arrays(
              [1, 2, 4, 6, 7],     # 2(5)2
              [1, 1, 2, 4, 5, 8]   # 3(3)3
              # [1, 1, 1, 2, 2, 4, 4, 5, 6, 7, 8] -> 4
             )).to eq 4
          end
        end
        context 'even number of total element' do
          it 'returns correct length' do
            expect(@mtsa.find_median_sorted_arrays(
              [1, 2, 3, 4, 10, 12 ,14, 15],  # 4(7)4
              [0, 2, 3, 6, 7, 8]   # 3(4.5)3
              # [0, 1, 2, 2, 3, 3, 4, 6, 7, 8, 10, 12, 14, 15] -> 5

             )).to eq 5
          end
        end
      end

    end

  end

end
