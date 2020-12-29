class Institution < ApplicationRecord
  has_many :students
  belongs_to :country
end
