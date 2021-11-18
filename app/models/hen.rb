class Hen < ApplicationRecord
  has_many :bookings
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch::Model
  pg_search_scope :search_by_name_and_breed,
    against: [ :name, :breed ],
    using: {
      tsearch: { prefix: true }
    }
end
