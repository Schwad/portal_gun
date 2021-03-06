# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'portal_gun/version'
require 'portal_gun/firing'
require 'portal_gun/ruby_versions'

Gem::Specification.new do |spec|
  spec.name          = "portal_gun"
  spec.version       = PortalGun::VERSION
  spec.authors       = ["Nick Schwaderer"]
  spec.email         = ["nick.schwaderer@oceanshq.com"]

  spec.summary       = %q{Whip out your portal gun and take your Gemfile to any point in history.}
  spec.description   = %q{This gem allows you to run a Terminal command with a supplied date in ruby format and generate a gemfile with gems specified to the most recent versions before that date.}
  spec.homepage      = "https://github.com/schwad/portal_gun"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
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
  spec.add_development_dependency "pry"
  spec.add_dependency "mechanize"
  spec.add_dependency "activesupport"
end
