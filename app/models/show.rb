class Show < ActiveRecord::Base
  has_many :characters
  has_many :authors, through: :characters
  belongs_to :network
end
