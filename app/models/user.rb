class User < ApplicationRecord
  has_many :teachers
  has_many :bookings
  has_many :myclasses, through: :teachers, source: :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
