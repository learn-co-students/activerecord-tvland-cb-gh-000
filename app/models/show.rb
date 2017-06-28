class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def build_network(call_letters:)
    network = Network.create(call_letters: call_letters)
    self.network = network
  end
end
