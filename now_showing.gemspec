# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'now_showing/version'

Gem::Specification.new do |spec|
  spec.name          = "now_showing"
  spec.version       = NowShowing::VERSION
  spec.authors       = ["vineshp"]
  spec.email         = ["vinesh.persaud@gmail.com"]

  spec.summary       = %q{ Shows current top ten movies and movies opening this week.}
  spec.description   = %q{ }
  spec.homepage      = "http://codeesh.github.io/"
  spec.license       = "MIT"
  spec.files         = ["lib/now_showing.rb","lib/now_showing/cli.rb","lib/now_showing/opening.rb","lib/now_showing/showing.rb", "config/environment.rb"]
  spec.executables << 'now-showing'



  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.require_paths = ["lib"]


  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'pry'
  spec.add_dependency 'nokogiri'
end
