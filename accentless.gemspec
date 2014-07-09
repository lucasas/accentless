# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "accentless/version"

Gem::Specification.new do |s|
  s.name        = "accentless"
  s.version     = Accentless::VERSION
  s.authors     = ["Lucas Souza"]
  s.email       = ["lucasas@gmail.com"]
  s.homepage    = "http://github.com/lucasas/accentless/"
  s.summary     = %q{Rubygem to removing accents}
  s.description = %q{Rubygem to removing accents.}

  s.rubyforge_project = "accentless"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency("rspec", ["~> 2.6.0"])
end
