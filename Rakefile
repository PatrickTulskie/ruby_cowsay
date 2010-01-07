require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('ruby_cowsay', '0.1.0') do |p|
  p.description = 'Cowsay, written in ruby, as a gem.'
  p.url = 'http://github.com/patricktulskie/cowsay'
  p.author = 'Patrick Tulskie'
  p.email = 'PatrickTulskie@gmail.com'
  p.ignore_pattern = ['tmp/*', 'script/*', 'lib/main.rb', 'util/*', 'util/perl_cows/*']
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }