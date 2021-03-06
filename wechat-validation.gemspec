# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wechat/validation/version'

Gem::Specification.new do |spec|
  spec.name        = 'wechat-validation'
  spec.version     = Wechat::Validation::VERSION
  spec.authors     = [ 'Topbit Du' ]
  spec.email       = [ 'topbit.du@gmail.com' ]
  spec.summary     = 'Wechat Server Validation Library 微信服务器验证库'
  spec.description = 'Wechat Server Validation Library handles the validation requests from the Wechat servers. 微信服务器验证库用于处理微信服务器发出的验证请求。'
  spec.homepage    = 'https://github.com/topbitdu/wechat-validation'
  spec.license     = 'MIT'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  #if spec.respond_to?(:metadata)
  #  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  #else
  #  raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  #end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = [ 'lib' ]

  spec.add_dependency 'wechat-core', '~> 0.4'

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake',    '~> 10.0'
  spec.add_development_dependency 'rspec',   '~> 3.0'

end
