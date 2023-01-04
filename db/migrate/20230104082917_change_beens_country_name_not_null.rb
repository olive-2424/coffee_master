class ChangeBeensCountryNameNotNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null :beens, :country_name, false
  end
end
