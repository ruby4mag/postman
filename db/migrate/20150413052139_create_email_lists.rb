class CreateEmailLists < ActiveRecord::Migration
  def change
    create_table :email_lists do |t|
      t.string :name
      t.belongs_to :users, foreign_key: true
      t.text :list
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
