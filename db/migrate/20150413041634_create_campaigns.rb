class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :name
      t.belongs_to :account, index: true, foreign_key: true
      t.integer :email_limit
      t.integer :email_used

      t.timestamps null: false
    end
  end
end
