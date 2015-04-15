class RemoveListFromEmailLists < ActiveRecord::Migration
  def change
    remove_column :email_lists, :list, :text
  end
end
