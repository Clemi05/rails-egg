class Hen < ApplicationRecord
  has_many :bookings

  include PgSearch::Model
  pg_search_scope :search_by_name_and_breed,
    against: [ :name, :breed ],
    using: {
      tsearch: { prefix: true }
    }
end
