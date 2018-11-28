module Sepomex
  module Client
    class State < Sepomex::Client::Base
      get :all,            '/states', timeout: 60
      get :find,           '/states/:id'
      get :municipalities, '/states/:state_id/municipalities'
    end
  end
end