# -*- encoding: utf-8 -*-
require File.expand_path('../lib/check_tag/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Dan Bickford"]
  gem.email         = ["danbickford007@yahoo.com"]
  gem.description   = %q{Check box tag that submits value whether checked or unchecked}
  gem.summary       = %q{Form helper check box tag that will submit a value whether the box is checked or not.  Call chech_tag('id', 'checked value', 'unchecked value', 'default value') and your checkbox will be created.  It will submit your values according whether checked or not.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "check_tag"
  gem.require_paths = ["lib"]
  gem.version       = CheckTag::VERSION

  gem.add_development_dependency "rspec"
  gem.add_development_dependency "rspec-rails"
  gem.add_development_dependency "actionpack"
  gem.add_development_dependency "activesupport"
  gem.add_development_dependency "rails"
end
