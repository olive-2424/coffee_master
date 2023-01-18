# frozen_string_literal: true

class AddBeenImageToBeens < ActiveRecord::Migration[5.2]
  def change
    add_column :beens, :been_image, :string
  end
end
