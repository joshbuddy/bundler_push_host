# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "bundler_push_host/version"

Gem::Specification.new do |s|
  s.name        = "bundler_push_host"
  s.version     = BundlerPushHost::VERSION
  s.authors     = ["Josh Hull"]
  s.email       = ["joshbuddy@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Set the hostname for bundle gem release}
  s.description = %q{Set the hostname for bundle gem release.}

  s.rubyforge_project = "bundler_push_host"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_runtime_dependency "bundler"
  s.add_development_dependency "rake"
end
