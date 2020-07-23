class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end
  def build_show(options = {})
    #sh = Show.new(name: _show)
    #self.show = sh
    self.show = create_show(options)
  end

end
