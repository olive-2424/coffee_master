# frozen_string_literal: true

class Been < ApplicationRecord
  validates :country_name, presence: true, length: { maximum: 30 }
  validates :farm_name, presence: true, length: { maximum: 30 }
end
