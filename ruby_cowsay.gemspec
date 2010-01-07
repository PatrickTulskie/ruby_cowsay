# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{ruby_cowsay}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Patrick Tulskie"]
  s.date = %q{2010-01-07}
  s.description = %q{Cowsay, written in ruby, as a gem.}
  s.email = %q{PatrickTulskie@gmail.com}
  s.extra_rdoc_files = ["README.mkdown", "lib/ruby_cowsay.rb", "lib/ruby_cowsay/cow.rb", "lib/ruby_cowsay/cows/beavis.zen.rb", "lib/ruby_cowsay/cows/bong.rb", "lib/ruby_cowsay/cows/bud-frogs.rb", "lib/ruby_cowsay/cows/bunny.rb", "lib/ruby_cowsay/cows/cheese.rb", "lib/ruby_cowsay/cows/cower.rb", "lib/ruby_cowsay/cows/daemon.rb", "lib/ruby_cowsay/cows/default.rb", "lib/ruby_cowsay/cows/dragon-and-cow.rb", "lib/ruby_cowsay/cows/dragon.rb", "lib/ruby_cowsay/cows/elephant-in-snake.rb", "lib/ruby_cowsay/cows/elephant.rb", "lib/ruby_cowsay/cows/eyes.rb", "lib/ruby_cowsay/cows/flaming-sheep.rb", "lib/ruby_cowsay/cows/ghostbusters.rb", "lib/ruby_cowsay/cows/head-in.rb", "lib/ruby_cowsay/cows/hellokitty.rb", "lib/ruby_cowsay/cows/kiss.rb", "lib/ruby_cowsay/cows/kitty.rb", "lib/ruby_cowsay/cows/koala.rb", "lib/ruby_cowsay/cows/kosh.rb", "lib/ruby_cowsay/cows/luke-koala.rb", "lib/ruby_cowsay/cows/mech-and-cow.rb", "lib/ruby_cowsay/cows/meow.rb", "lib/ruby_cowsay/cows/milk.rb", "lib/ruby_cowsay/cows/moofasa.rb", "lib/ruby_cowsay/cows/moose.rb", "lib/ruby_cowsay/cows/mutilated.rb", "lib/ruby_cowsay/cows/ren.rb", "lib/ruby_cowsay/cows/satanic.rb", "lib/ruby_cowsay/cows/sheep.rb", "lib/ruby_cowsay/cows/skeleton.rb", "lib/ruby_cowsay/cows/small.rb", "lib/ruby_cowsay/cows/sodomized.rb", "lib/ruby_cowsay/cows/stegosaurus.rb", "lib/ruby_cowsay/cows/stimpy.rb", "lib/ruby_cowsay/cows/supermilker.rb", "lib/ruby_cowsay/cows/surgery.rb", "lib/ruby_cowsay/cows/telebears.rb", "lib/ruby_cowsay/cows/three-eyes.rb", "lib/ruby_cowsay/cows/turkey.rb", "lib/ruby_cowsay/cows/turtle.rb", "lib/ruby_cowsay/cows/tux.rb", "lib/ruby_cowsay/cows/udder.rb", "lib/ruby_cowsay/cows/vader-koala.rb", "lib/ruby_cowsay/cows/vader.rb", "lib/ruby_cowsay/cows/www.rb"]
  s.files = ["Manifest", "README.mkdown", "Rakefile", "lib/ruby_cowsay.rb", "lib/ruby_cowsay/cow.rb", "lib/ruby_cowsay/cows/beavis.zen.rb", "lib/ruby_cowsay/cows/bong.rb", "lib/ruby_cowsay/cows/bud-frogs.rb", "lib/ruby_cowsay/cows/bunny.rb", "lib/ruby_cowsay/cows/cheese.rb", "lib/ruby_cowsay/cows/cower.rb", "lib/ruby_cowsay/cows/daemon.rb", "lib/ruby_cowsay/cows/default.rb", "lib/ruby_cowsay/cows/dragon-and-cow.rb", "lib/ruby_cowsay/cows/dragon.rb", "lib/ruby_cowsay/cows/elephant-in-snake.rb", "lib/ruby_cowsay/cows/elephant.rb", "lib/ruby_cowsay/cows/eyes.rb", "lib/ruby_cowsay/cows/flaming-sheep.rb", "lib/ruby_cowsay/cows/ghostbusters.rb", "lib/ruby_cowsay/cows/head-in.rb", "lib/ruby_cowsay/cows/hellokitty.rb", "lib/ruby_cowsay/cows/kiss.rb", "lib/ruby_cowsay/cows/kitty.rb", "lib/ruby_cowsay/cows/koala.rb", "lib/ruby_cowsay/cows/kosh.rb", "lib/ruby_cowsay/cows/luke-koala.rb", "lib/ruby_cowsay/cows/mech-and-cow.rb", "lib/ruby_cowsay/cows/meow.rb", "lib/ruby_cowsay/cows/milk.rb", "lib/ruby_cowsay/cows/moofasa.rb", "lib/ruby_cowsay/cows/moose.rb", "lib/ruby_cowsay/cows/mutilated.rb", "lib/ruby_cowsay/cows/ren.rb", "lib/ruby_cowsay/cows/satanic.rb", "lib/ruby_cowsay/cows/sheep.rb", "lib/ruby_cowsay/cows/skeleton.rb", "lib/ruby_cowsay/cows/small.rb", "lib/ruby_cowsay/cows/sodomized.rb", "lib/ruby_cowsay/cows/stegosaurus.rb", "lib/ruby_cowsay/cows/stimpy.rb", "lib/ruby_cowsay/cows/supermilker.rb", "lib/ruby_cowsay/cows/surgery.rb", "lib/ruby_cowsay/cows/telebears.rb", "lib/ruby_cowsay/cows/three-eyes.rb", "lib/ruby_cowsay/cows/turkey.rb", "lib/ruby_cowsay/cows/turtle.rb", "lib/ruby_cowsay/cows/tux.rb", "lib/ruby_cowsay/cows/udder.rb", "lib/ruby_cowsay/cows/vader-koala.rb", "lib/ruby_cowsay/cows/vader.rb", "lib/ruby_cowsay/cows/www.rb", "ruby_cowsay.gemspec"]
  s.homepage = %q{http://github.com/patricktulskie/cowsay}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Ruby_cowsay", "--main", "README.mkdown"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{ruby_cowsay}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Cowsay, written in ruby, as a gem.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
