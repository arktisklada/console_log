$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "console_log/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "console_log"
  s.version     = ConsoleLog::VERSION
  s.authors     = ["arktisklada"]
  s.email       = ["mail@enorganik.com"]
  s.homepage    = "https://github.com/arktisklada/console_log"
  s.summary     = "Log rails variables to the browser console."
  # s.description = "TODO: Description of ConsoleLog."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.0"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "pry"
end
