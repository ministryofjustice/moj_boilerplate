$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "moj_boilerplate/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "moj_boilerplate"
  s.version     = MojBoilerplate::VERSION
  s.authors     = ["MOJ Digital Services"]
  s.email       = ["info@digital.justice.gov.uk"]
  s.homepage    = "http://blogs.justice.gov.uk/digital/"
  s.summary     = "MOJ DS Boilerplate"
  s.description = "MOJ DS Boilerplate"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.0"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "minitest"
  s.add_development_dependency "capybara"
end
