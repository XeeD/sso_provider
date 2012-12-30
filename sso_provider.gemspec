$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "sso_provider/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "sso-provider"
  s.version     = SSOProvider::VERSION
  s.authors     = ["Lukas Voda", "gautamrege"]
  s.email       = ["xeedus@gmail.com"]
  s.homepage    = "https://github.com/XeeD/sso-provider/"
  s.summary     = "Single Sign On Rails Engine"
  s.description = "Rails Engine Single Sign On provider built using Devise and Omniauth."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2"
  s.add_dependency "devise"
  s.add_dependency "omniauth"
  s.add_dependency "omniauth-google-oauth2"

  s.add_development_dependency "sqlite3"
end
