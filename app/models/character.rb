class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def build_show(name:)
    show = Show.create(name: name)
    self.show = show
  end

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end
end
