class Department < ApplicationRecord
  has_many :cities, dependent: :destroy
  belongs_to :department
end
