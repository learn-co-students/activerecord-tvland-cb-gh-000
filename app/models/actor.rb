require "pry"
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
    result = nil
    self.shows.each do |show|
      result =
        self.characters.detect{|char| char.show_id == show.id}.name +
        " - "  + show.name
    end
    result
  end
end
