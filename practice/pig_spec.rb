require_relative 'pig.rb'

describe 'Converting single words to Pig Latin' do

	 it 'converts a word that begins with a vowel to a pig latin equivalent' do
      expect(pig('happy')).to eq 'appyhay'
    end


	# describe 'Converting a sentence to Pig Latin' do
	# end

	# 	it 'converts a word that begins with a vowel to a pig latin equivalent' do
	#       expect(pig('happy')).to eq "appyhay"
	#     end


end 