class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :check_ins
  has_many :answers
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable
end
