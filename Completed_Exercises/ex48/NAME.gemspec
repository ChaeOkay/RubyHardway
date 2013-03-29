# -*- encoding: utf-8 -*- confirmed

$:.push File.expand_path("../lib", _FILE_)
require "Ex48/version"

Gem::Specification.new do |s|
  s.name          = "Ex48"
  s.version       = Ex48::0.0.0.1
  s.authors       = ["cok"]
  s.email         = ["chaemobile@gmail.com"]
  s.homepage      = ""
  s.summary       = %q{TODO: Write a gem summary}
  s.description   = %q{TODO: Write a gem description}
  
  s.rubyforge_project = "Ex48"
  
  s.files         = 'git ls-files'.split("\n")
  s.test_files    = 'git ls-files -- {test,spec,features}/*'.split("\n")
  s.executables   = 'git ls-files -- bin/*'.split("\n").map{|f| File.basename(f)}
  s.require_paths = ["lib"]
end
