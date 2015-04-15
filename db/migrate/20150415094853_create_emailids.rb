class CreateEmailids < ActiveRecord::Migration
  def change
    create_table :emailids do |t|
      t.belongs_to :email_list,  foreign_key: true
      t.string :email
      t.integer :unsubscribe

      t.timestamps null: false
    end
  end
end
