$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "jellyfish_docker/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "jellyfish-docker"
  s.version     = JellyfishDocker::VERSION
  s.authors     = ["Michael Fernando"]
  s.email       = ["fernando_michael@bah.com"]
  s.homepage    = "http://github.com/projectjellyfish/jellyfish-docker"
  s.summary     = "Jellyfish Docker Module"
  s.description = "Adds Docker provider and product types to Jellyfish API"
  s.license     = "APACHE"
  s.files       = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]
  s.test_files  = Dir['spec/**/*']
  s.add_dependency 'rails', '~> 4.2'
  s.add_dependency 'bcrypt', '~> 3.1'
end
