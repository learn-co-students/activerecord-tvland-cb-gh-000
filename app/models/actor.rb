class Actor < ActiveRecord::Base
  has_many :characters

  def list_roles
    self.characters.collect {|character| "#{character.name} - #{character.show.name}"}
  end

  def full_name
    "#{self.first_name } #{self.last_name}"
  end
end
