class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
 has_many :areas, dependent: :destroy
 has_many :locations, dependent: :destroy
 has_many :operators, dependent: :destroy
 has_many :ro_dprs, dependent: :destroy
 # has_many :stp_dprs

end
