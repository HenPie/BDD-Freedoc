class Speciality < ApplicationRecord
  has_many :joins
  has_many :doctors, through: :joins
end
