# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
<<<<<<< HEAD
<<<<<<< HEAD
require 'now_showing/version'
=======
require 'now/showing/version'
>>>>>>> bd91a844aa37a77f2397c223b5da79ebb86c0824
=======
require 'now_showing/version'
>>>>>>> e64af03802df66cdb7402e71515225939311d8c1

Gem::Specification.new do |spec|
  spec.name          = "now-showing"
  spec.version       = NowShowing::VERSION
  spec.authors       = ["codeesh"]
  spec.email         = ["vineshpersaud@gmail.com"]

<<<<<<< HEAD
<<<<<<< HEAD
  spec.summary       = %q{Write a short summary, because Rubygems requires one.}
  spec.description   = %q{Write a longer description or delete this line.}
  spec.homepage      = "http://mygemserver.com"
=======
  spec.summary       = %q{TODO: Write a short summary, because Rubygems requires one.}
  spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
>>>>>>> bd91a844aa37a77f2397c223b5da79ebb86c0824
=======
  spec.summary       = %q{Write a short summary, because Rubygems requires one.}
  spec.description   = %q{Write a longer description or delete this line.}
  spec.homepage      = "http://mygemserver.com"
>>>>>>> e64af03802df66cdb7402e71515225939311d8c1
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
<<<<<<< HEAD
<<<<<<< HEAD
    spec.metadata['allowed_push_host'] = "TODO: Set to http://mygemserver.com"
=======
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
>>>>>>> bd91a844aa37a77f2397c223b5da79ebb86c0824
=======
    spec.metadata['allowed_push_host'] = "TODO: Set to http://mygemserver.com"
>>>>>>> e64af03802df66cdb7402e71515225939311d8c1
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
<<<<<<< HEAD
<<<<<<< HEAD
  spec.add_development_dependency "pry"

  spec.add_dependency "nokogiri"
=======
>>>>>>> bd91a844aa37a77f2397c223b5da79ebb86c0824
=======
  spec.add_development_dependency "pry"

  spec.add_dependency "nokogiri"
>>>>>>> e64af03802df66cdb7402e71515225939311d8c1
end
