class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    [first_name, last_name].join(" ")
  end

  def list_roles
    characters.map { |character| [character.name, character.show.name].join(" - ") }
  end
end
