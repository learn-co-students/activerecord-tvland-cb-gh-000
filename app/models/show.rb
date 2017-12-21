class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  def build_network(option={})
    self.network = Network.create(option)
  end
end
