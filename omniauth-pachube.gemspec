# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-pachube/version"

Gem::Specification.new do |s|
  s.name        = "omniauth-pachube"
  s.version     = OmniAuth::Pachube::VERSION
  s.authors     = ["Levent Ali"]
  s.email       = ["lebreeze@gmail.com"]
  s.homepage    = "https://github.com/pachube/omniauth-pachube"
  s.summary     = %q{OmniAuth2 strategy for Pachube}
  s.description = %q{OmniAuth2 strategy for Pachube}

  s.rubyforge_project = "omniauth-pachube"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'omniauth-oauth2', '~> 1.0'
  s.add_development_dependency 'rspec', '~> 2.7'
  s.add_development_dependency 'rack-test'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'webmock'  
end
