class CreateEmailTemplates < ActiveRecord::Migration
  def change
    create_table :email_templates do |t|
      t.string :name
      t.string :last_name
      t.belongs_to :users, foreign_key: true
      t.text :content
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
