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

  include PgSearch::Model

  pg_search_scope :search_by_dungeon_type_and_success_rate,
                against: [ :dungeon_type, :success_rate, :name, :price_per_day ],
                using: {
                tsearch: { prefix: true } # <-- now `superman batm` will return something!
                }
end
