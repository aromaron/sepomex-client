lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sepomex/client/version'

Gem::Specification.new do |spec|
  spec.name          = 'sepomex-client'
  spec.version       = Sepomex::Client::VERSION
  spec.authors       = ['Nora Alvarado']
  spec.email         = ["noragmora@gmail.com"]

  spec.summary       = %q{Ruby SEPOMEX API client}
  spec.homepage      = 'https://gitlab.com/aromaron/sepomex-client'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org.
  # To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section
  # to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'flexirest',      '~> 1.7.3'
  spec.add_runtime_dependency 'json',           '~> 1.8'
  spec.add_runtime_dependency 'rest-client',    '~> 2.0.0'

  spec.add_development_dependency 'bundler',    '~> 1.16'
  spec.add_development_dependency 'minitest',   '~> 5.0'
  spec.add_development_dependency 'rake',       '~> 10.0'

  spec.add_development_dependency 'bump',       '~> 0.6.1'
  spec.add_development_dependency 'pry',        '~> 0.12.0'
  spec.add_development_dependency 'pry-byebug', '~> 3.6.0'
  spec.add_development_dependency 'sinatra',    '~> 2.0.4'
  spec.add_development_dependency 'webmock',    '~> 3.4.2'
end

