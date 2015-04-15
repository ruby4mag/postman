class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.text :address
      t.string :contact_num
      t.string :logo

      t.timestamps null: false
    end
  end
end
