
require_relative '99.rb'

describe 'bottle_song_lyrics' do

  describe 'can print a lyric' do

    it 'can print one lyric' do
      expect(bottle_song_lyrics(2)).to eq "1 bottles of beer on the wall, 1 bottles of beer. Take one down, pass it around, no more bottles of beer on the wall!"
    end

    it 'can print many lyrics including the last one' do

      expect(bottle_song_lyrics(2)).to eq "2 bottles of beer on the wall, 2 bottles of beer. Take one down, pass it around, 1 more bottles of beer on the wall! 1 bottles of beer on the wall, 1 bottles of beer. Take one down, pass it around, no more bottles of beer on the wall!"
    end

  end
end 