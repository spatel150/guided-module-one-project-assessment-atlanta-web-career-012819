class Passenger < ActiveRecord::Base
  has_many :reviews
  has_many :drivers, through: :reviews
end
