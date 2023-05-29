class Team < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :contracts
end
