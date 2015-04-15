class EmailList < ActiveRecord::Base
  belongs_to :users
  validates :name, presence: true, :presence => { :message => "is required." }
end
