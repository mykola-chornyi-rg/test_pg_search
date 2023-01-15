class Character < ApplicationRecord
  include PgSearch
  validates :name, :information, presence: true
  pg_search_scope :search_everywhere, against: [:name, :information]
end
