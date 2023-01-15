class Character < ApplicationRecord
  include PgSearch::Model
  validates :name, :information, presence: true

  scope :ft_search, -> (search) {where("(to_tsvector('english', information) @@ to_tsquery(?))", search)}

  pg_search_scope :search_information,
                  against: :information,
                  using: {
                    tsearch:{
                      dictionary: 'english',
                      tsvector_column: 'searchable'
                    }
                  }
end
