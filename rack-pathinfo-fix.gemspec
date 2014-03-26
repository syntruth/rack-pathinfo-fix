Gem::Specification.new do |s|
  s.name        = 'rack-pathinfo-fix'
  s.version     = '0.0.2'
  s.date        = '2014-03-26'
  s.summary     = "Rack Middleware to fix PATH_INFO munging."
  s.description = "Rack Middleware to fix Apache's PATH_INFO issues where SCRIPT_NAME is stripped from it."
  s.authors     = ["Randy Carnahan"]
  s.email       = 'syntruth@gmail.com'
  s.files       = ["lib/rack_pathinfo_fix.rb"]
  s.homepage    = "https://github.com/syntruth/rack-pathinfo-fix"
  s.license     = "GPL"
end

