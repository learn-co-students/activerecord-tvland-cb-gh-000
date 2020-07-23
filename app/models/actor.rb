class Actor < ActiveRecord::Base
  has_many :characters

  def full_name
    "#{first_name} #{last_name}"
  end
  def list_roles
    characters.map { |chr| "#{chr.name} - #{chr.show.name}" }
  end
end
