class Artist < ApplicationRecord
  has_many :songs
  validates :name, presence: true

    def self.order_by_name
      order(:name)
    end

  mount_uploader :image, ImageUploader
end
