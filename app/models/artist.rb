class Artist < ApplicationRecord
  has_many :songs

  class Artist < ApplicationRecord
    def self.order_by_name
      order(:name)
    end
  end

  mount_uploader :image, ImageUploader
end
