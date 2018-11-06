module Sepomex
  module Client
    SepomexClientError = Class.new StandardError
    BadRequestError = Class.new StandardError
    ServerError = Class.new StandardError
    PrivateKeyError = Class.new StandardError
    NotPrivateKeyError = Class.new ArgumentError
  end
end
