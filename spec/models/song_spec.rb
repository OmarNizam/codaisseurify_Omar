require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:title)}
    it { is_expected.to validate_length_of(:title).is_at_most(35) }
  end

  describe ".order_by_title" do
    let!(:artist1) { create :artist, name: "Omar"}
    let!(:song1) { create :song, title: "Get up stand up", artist: artist1 }
    let!(:song2) { create :song, title: "Sorry", artist: artist1 }
    let!(:song3) { create :song, title: "Me Enamore", artist: artist1 }

    it "return a sorted array of songs by title" do
      expect(artist1.songs.order_by_title).to eq([song1, song3, song2])
    end
  end

  describe "assosiation with artist" do
    it { is_expected.to belong_to :artist}
  end


end
