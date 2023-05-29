class Contract < ApplicationRecord
  belongs_to :renter, class_name: "User"
  belongs_to :team
end
