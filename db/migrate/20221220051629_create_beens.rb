class CreateBeens < ActiveRecord::Migration[5.2]
  def change
    create_table :beens do |t|
      t.string :country_name
      t.string :farm_name
      t.text :description

      t.timestamps
    end
  end
end
