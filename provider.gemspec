# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'provider/version'

Gem::Specification.new do |gem|
  gem.name          = "provider"
  gem.version       = Provider::VERSION
  gem.authors       = ["iStar"]
  gem.email         = ["hzuqiuyuanxin@gmail.com"]
  gem.description   = %q{Make query easily.}
  gem.summary       = %q{Access attribution and association easily.}
  gem.homepage      = "http://www.cnblog.com/hzqyx"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
