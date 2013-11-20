$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "moj_kickstart/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "moj_kickstart"
  s.version     = MojKickstart::VERSION
  s.authors     = ["MOJ DS"]
  s.email       = ["info@digital.justice.gov.uk"]
  s.homepage    = "http://blogs.justice.gov.uk/digital/"
  s.summary     = "MOJ DS Kickstart"
  s.description = "MOJ DS Kickstart"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.0"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "minitest"
  s.add_development_dependency "capybara"
end
