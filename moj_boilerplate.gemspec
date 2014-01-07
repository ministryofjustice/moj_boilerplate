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
  s.description = "Basic boilerplate for MOJ Services"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "govuk_template", "0.3.8"
  s.add_dependency "govuk_frontend_toolkit", "0.38.0"
end
