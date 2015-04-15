class User < ActiveRecord::Base
  
  #
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :role
  has_many :campaign
  has_many :email_template


before_save :assign_role

def assign_role
  self.role = Role.find_by name: "User" if self.role.nil?
end

def admin?
  self.role.name == "Admin"
end

def local_authorized?
  self.user.name == current_user.name
end 

end
