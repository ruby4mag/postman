class RemoveUsersIdFromEmailLists < ActiveRecord::Migration
  def change
    remove_column :email_lists, :users_id, :integer
  end
end
