# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'floccus'

Gem::Specification.new do |gem|
  gem.authors       = ["Owen Bossola"]
  gem.email         = ["owen@bosso.la"]
  gem.description   = %q{A sane and tidy way to manage files in the cloud.}
  gem.summary       = %q{Remove the need to remember filenames, paths, or buckets.  All that's left is files and URLs.}
  gem.homepage      = "http://owenbossola.com/floccus"

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
