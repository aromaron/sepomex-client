module Sepomex
  module Client
    class Zipcodes < Mifiel::Base
      get :code,         'zipcodes/:code'
      get :neighborhood, '/zipcodes/:neighborhood'
      get :city,         '/zipcodes/:city'
      get :state,        '/zipcodes/:state'
    end
  end
end
