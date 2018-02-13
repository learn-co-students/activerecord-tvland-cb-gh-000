require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  def full_name
    "#{self.first_name} #{self.last_name}"
  end
  def list_roles
    array=[]
    x=0
    while x < self.shows.count do
      array << "#{self.characters[x].name} - #{self.shows[x].name}"
      x += 1
    end
    array
  end
end
