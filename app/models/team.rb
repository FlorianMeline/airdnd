class Team < ApplicationRecord
  has_one_attached :photo
  belongs_to :owner, class_name: "User"
  has_many :contracts
end
