class ChangeBeensColumnLimit30 < ActiveRecord::Migration[5.2]
  def up
    change_column :beens, :country_name, :string, limit: 30
    change_column :beens, :farm_name, :string, limit: 30
  end
  def down
    change_column :beens, :country_name, :string
    change_column :beens, :farm_name, :string
  end
end
