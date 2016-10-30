class Artist < ApplicationRecord
  has_many :songs
  validates :name, presence: true

    def self.order_by_name
      order(:name)
    end

    def self.order_by_created_at
      order(:created_at)
    end

  mount_uploader :image, ImageUploader
end
