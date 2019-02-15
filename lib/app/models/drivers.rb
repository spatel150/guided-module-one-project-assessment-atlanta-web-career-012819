class Driver < ActiveRecord::Base
  has_many :reviews
  has_many :passengers, through: :reviews
end
