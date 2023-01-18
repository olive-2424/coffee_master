class Been < ApplicationRecord
  validates :country_name, presence: true, length: { maximum: 30 }
  validates :farm_name, presence: true, length: { maximum: 30 }

  belongs_to :user
  mount_uploader :been_image, BeenImageUploader
end
