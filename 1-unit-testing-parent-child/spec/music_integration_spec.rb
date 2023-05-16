require 'music_library'

RSpec.describe MusicLibrary do
  context "when given a track" do
    it "returns the track" do
      music_library = MusicLibrary.new
      fake_entry = double(:fake_track, title: "Test title", artist: "test artist")
      music_library.add(fake_entry)
      expect(music_library.all).to eq [fake_entry]
    end
  end
end