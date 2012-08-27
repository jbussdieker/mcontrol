task :default => [:clean, :build]

task :clean do
  `rm -rf .bundle vendor`
  `rm *.gem`
end

task :deploy do
  `bundle install --deployment`
end

task :bundle do
  `bundle install`
end

task :build => [:bundle] do
  `gem build mcontrol.gemspec`
end
