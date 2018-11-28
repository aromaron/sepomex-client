module Sepomex
  module Client
    class Municipality < Sepomex::Client::Base
      get :all,  '/municipalities', timeout: 60
      get :find, '/municipalities/:id'
    end
  end
end