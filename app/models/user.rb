class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :teams, foreign_key: :owner_id
  has_many :contracts, foreign_key: :renter_id, through: :teams
  has_one_attached :avatar
end
