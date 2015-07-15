# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ltsv2csv/version'

Gem::Specification.new do |spec|
  spec.name          = "ltsv2csv"
  spec.version       = Ltsv2csv::VERSION
  spec.authors       = ["Nobuhiro Nikushi"]
  spec.email         = ["deneb.ge@gmail.com"]

  spec.summary       = "LTSV (Labeled Tab Separated Values) to CSV converter"
  spec.description   = "ltsv2csv command converts LTSV (Labeled Tab Separated Values) to CSV"
  spec.homepage      = "https://github.com/niku4i/ltsv2csv"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end