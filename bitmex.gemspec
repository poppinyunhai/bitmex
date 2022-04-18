
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "bitmex/version"

Gem::Specification.new do |spec|
  spec.name          = "bitmex"
  spec.version       = Bitmex::VERSION
  spec.authors       = ["horizon67"]
  spec.email         = ["sir.yes.sir.maru@gmail.com"]

  spec.summary       = %q{Bitmex API wrapper.}
  spec.description   = %q{Bitmex API wrapper.}
  spec.homepage      = "https://github.com/horizon67/bitmex"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'faraday'
  spec.add_dependency 'faraday_middleware'
  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 13.0.6"
end
