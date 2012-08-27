task :default => :build

task :clean do
  `rm -rf .bundle vendor`
  `rm *.gem`
end

task :bundle_deploy do
  `bundle install --deployment`
end

task :bundle do
  `bundle install`
end

task :build_gem do
  `gem build mcontrol.gemspec`
end

task :install_gem do
  `gem install mcontrol-*.gem`
end

task :build => [:clean, :bundle, :build_gem]
task :deploy => [:clean, :bundle_deploy, :build_gem]
task :install => [:build, :install_gem]
