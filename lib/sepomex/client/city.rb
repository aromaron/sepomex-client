module Sepomex
  module Client
    class City < Sepomex::Client::Base
      get :all,  '/cities', timeout: 60
      get :find, '/cities/:id'
    end
  end
end