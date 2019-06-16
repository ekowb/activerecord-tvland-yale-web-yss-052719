class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def build_network(net_name)
        self.network = Network.create(net_name)
    end

end