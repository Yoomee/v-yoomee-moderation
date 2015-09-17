# Provide a simple gemspec so you can easily use your enginex
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name = "yoomee-moderation"
  s.summary = "Gem for adding Yoomee's moderation tools to a site"
  s.description = ""
  s.version = "0.0.2"
  s.authors = "yoomee devs"
  
  s.add_dependency("haml")
  s.add_dependency("googlecharts")
  s.add_dependency("rails", '>=3.0.3')
  s.add_dependency('mysql2')
  
  s.add_development_dependency('shoulda')
  s.add_development_dependency('mocha')
  s.add_development_dependency('factory_girl')
  
  
  s.files = Dir["{app,lib,config,db}/**/*"] + ["LICENSE", "Rakefile", "Gemfile", "README.rdoc"]
  # s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
