class Qualification < ApplicationRecord
  belongs_to :student
  belongs_to :credential
end
