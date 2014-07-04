# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bin_checker/version'

Gem::Specification.new do |spec|
  spec.name          = 'bin_checker'
  spec.version       = BinChecker::VERSION
  spec.authors       = ['lab2023', 'Hamit Türkü Kaya']
  spec.email         = ['lab2023', 'hamit.turku.kaya@lab2023.com']
  spec.summary       = %q{Bin checker identifies Turkish banks with bin numbers.}
  spec.description   = %q{Bin checker identifies Turkish banks with bin numbers.}
  spec.homepage      = 'https://github.com/lab2023/bin_checker'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_runtime_dependency 'activemodel', '>= 0'
  spec.add_runtime_dependency 'activerecord', '>= 0'
end
