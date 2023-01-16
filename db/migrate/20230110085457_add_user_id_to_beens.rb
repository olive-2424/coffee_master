class AddUserIdToBeens < ActiveRecord::Migration[5.2]
  def up
    execute 'DELETE FROM beens;'
    add_reference :beens, :user, null: false, index: true
  end

  def down
    remove_reference :beens, :user, index: true
  end
end
