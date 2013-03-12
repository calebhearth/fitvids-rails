# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fitvids-rails/version'

Gem::Specification.new do |gem|
  gem.name          = 'fitvids-rails'
  gem.version       = Fitvids::Rails::VERSION
  gem.authors       = ['Caleb Thompson']
  gem.email         = ['cjaysson@gmail.com']
  gem.summary       = 'Rails wrapper for fitvids.js'
  gem.description   = 'Rails wrapper for fitvids, a lightweight, easy-to-use jQuery plugin for fluid width video embeds.'
  gem.homepage      = 'http://fitvidsjs.com'

  gem.files         = `git ls-files`.split($/)
  gem.require_path  = 'lib'

  gem.add_dependency 'railties', '>= 3.2.0'
end
