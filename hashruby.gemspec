Gem::Specification.new do |s|
  s.name        = 'hashruby'
  s.version     = '0.0.0'
  s.date        = '2012-07-26'
  s.summary     = "hash for ruby!"
  s.description = "A simple hash API on C"
  s.authors     = ["Alex Shilo"]
  s.email       = 'ashylo@heliostech.hk'
  s.files       = ["lib/hashruby.rb"]
  s.files = Dir.glob('lib/**/*.rb') +
            Dir.glob('ext/**/*.{c,h,rb}')
  s.extensions  = ['ext/hashruby/extconf.rb']
  s.executables = ['hashruby']
  s.homepage    = 'http://rubygems.org/gems/hashruby'
end