# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "braces/version"

Gem::Specification.new do |s|
  s.name        = "braces"
  s.version     = Braces::VERSION
  s.authors     = ["Christopher Meiklejohn"]
  s.email       = ["christopher.meiklejohn@gmail.com"]
  s.homepage    = "https://github.com/cmeiklejohn/braces"
  s.summary     = %q{Braces help you quickly bootstrap a sinatra application.}
  s.description = %q{Braces help you quickly bootstrap a sinatra application.}

  s.rubyforge_project = "braces"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_development_dependency('rake','~> 0.9.2')
  s.add_dependency('methadone')
end
