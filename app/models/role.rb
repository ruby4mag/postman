class Role < ActiveRecord::Base
  has_many :users
  validates :name, presence: true, :presence => { :message => "is required." }
end
