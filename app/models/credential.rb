class Credential < ApplicationRecord
    has_many :qualifications, :dependent => :destroy
    has_many :students, :through => :qualifications
end
