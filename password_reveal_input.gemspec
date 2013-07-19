# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'password_reveal_input-simple_form'

Gem::Specification.new do |spec|
  spec.name          = "password_reveal_input-simple_form"
  spec.version       = PasswordReveal::SimpleForm::VERSION
  spec.authors       = ["Taylor Boyko"]
  spec.email         = ["taylorboyko@gmail.com"]
  spec.description   = %q{A password input with reveal option for Simple Form}
  spec.summary       = %q{An easy way to have a password field in your form that include an option to reveal the stored value.}
  spec.homepage      = "https://github.com/tboyko/password_reveal_input"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'simple_form'
  spec.add_dependency 'jquery-rails'
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
