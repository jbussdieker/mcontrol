Gem::Specification.new do |s|
  s.name        = 'mcontrol'
  s.version     = '0.0.2'
  s.platform    = Gem::Platform::RUBY
  s.summary     = "Low level API for executing mcollective agents"
  s.description = "A thin wrapper of the MCollective::RPC function for cross ruby version use"

  s.authors     = ["Joshua B. Bussdieker"]
  s.email       = ["jbussdieker@gmail.com"]
  s.homepage    = "https://github.com/jbussdieker/mcontrol"
  s.executables = 'mcontrol'

  s.files        = Dir['config.ru', 'README.md', 'Gemfile', 'Gemfile.lock', '{lib,vendor}/**/*', '.bundle/**/*']
end
