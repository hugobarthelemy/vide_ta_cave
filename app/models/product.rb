class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category
  include PgSearch
  pg_search_scope :search_by_name_and_category, :against => :name,
    associated_against: {
        category: :name
      }
end
