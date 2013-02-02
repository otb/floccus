# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'floccus'

Gem::Specification.new do |gem|
  gem.authors       = ["Owen Bossola"]
  gem.email         = ["owen.bossola@gmail.com"]
  gem.description   = %q{Write a gem description}
  gem.summary       = %q{Write a gem summary}
  gem.homepage      = "http://floccus.org"

  # gem.add_dependency 'commander', '~> 4.1.3'
  # gem.add_dependency 'aws-sdk', '~> 1.8.1.1'
  # gem.add_dependency 'ruby-progressbar', '~ 1.0.2'

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "floccus"
  gem.require_paths = ["lib"]
  gem.version       = Floccus::VERSION
end
