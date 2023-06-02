class Team < ApplicationRecord
  has_one_attached :photo
  belongs_to :owner, class_name: "User"
  has_many :contracts

  def owner_photo_url
    if photo.attached?
      photo.variant(resize: "398x295").url
    else
      ActionController::Base.helpers.asset_url("teams.png")
    end
  end

end
