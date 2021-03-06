# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'arb/bs/version'

Gem::Specification.new do |spec|
  spec.name          = "arb-bs"
  spec.version       = Arb::Bs::VERSION
  spec.authors       = ["arybin"]
  spec.email         = ["arybin@163.com"]

  spec.summary       = %q{A demo of Web Crawler using arb-crawler}
  spec.description   = %q{A demo of Web Crawler using arb-crawler}
  spec.homepage      = "https://github.com/arybin-cn/arb-bs"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "arb-crawler"
  spec.add_dependency "arb-thread"

end
