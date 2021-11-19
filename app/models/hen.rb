class Hen < ApplicationRecord
  has_many :bookings
  geocoded_by :location
  has_one_attached :photo
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch::Model
  pg_search_scope :search_by_location_name_breed,
    against: [ :location, :name, :breed ],
    using: {
      tsearch: { prefix: true }
    }
end
