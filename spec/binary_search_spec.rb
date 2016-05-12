require_relative '../binary_search'


describe 'binary_search_include?' do

  let(:numbers) { [1,2,3,4,5,6,7,8,9] }
  let(:empty) { [] }
  let(:one_element) { [5] }

  context 'when the array is empty' do
    it 'returns false if the array is empty' do
      index_of_a = binary_search_include?(:R, empty)
      expect(index_of_a).to eq false
    end
  end

  context 'when the array contains one element' do
    it 'returns true if element is found' do
      index_of_a = binary_search_include?(5, one_element)
      expect(index_of_a).to eq true
    end
  end

  context 'when the element is not in the array' do
    it 'returns false if the element cannot be found' do
      index_of_a = binary_search_include?(10, numbers)
      expect(index_of_a).to eq false
    end
  end

  context 'when the array does contain the searched for element' do
    it 'returns true if element is found' do
      index_of_a = binary_search_include?(1, numbers)
      expect(index_of_a).to eq true
    end
  end

end
# end 

# describe 'binary_search' do
#   let(:numbers) { [1,2,3,4,5,6,7,8] }
#   let(:empty) { [] }
#   let(:one_element) { [5] }

#   context 'when the array is empty' do
#     it 'returns nil' do
#       index_of_a = binary_search(1, empty)
#       expect(index_of_a).to eq nil
#     end
#   end

#   context 'when the element is included in the array' do
#     it 'returns the index of the element' do
#       index_of_a = binary_search(3, numbers)
#       expect(index_of_a).to eq 2
#     end
#   end

#   context 'when the array contains only one element' do
#     it 'returns the index of the element' do
#       index_of_a = binary_search(5, one_element)
#       expect(index_of_a).to eq 0
#     end
#   end

# end
