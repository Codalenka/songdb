require 'rails_helper'

RSpec.describe Artist, type: :model do

  describe "#order_by_name" do
    let!(:artist1) { create :artist, name: "Aroom" }
    let!(:artist2) { create :artist, name: "Croom" }
    let!(:artist3) { create :artist, name: "Broom" }

    it "returns a sorted array of artists sorted by names" do
      expect(Artist.order_by_name).to match_array [artist1, artist3, artist2]
    end
  end

  describe "#order_by_created_at" do
    let!(:artist1) { create :artist, created_at: "2016-10-23 07:54:03.256686" }
    let!(:artist2) { create :artist, created_at: "2016-10-29 07:54:03.256686" }
    let!(:artist3) { create :artist, created_at: "2016-10-25 07:54:03.256686" }

    it "returns a sorted array of artists by created at (date)" do
      expect(Artist.order_by_created_at).to match_array [artist1, artist3, artist2]
    end
  end
end

