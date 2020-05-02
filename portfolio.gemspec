$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'portfolio/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'rails-portfolio'
  s.version     = Portfolio::VERSION
  s.authors     = ['Eduardo Messuti']
  s.email       = ['messuti.edd@gmail.com']
  s.homepage    = 'https://github.com/messuti-edd/rails-portfolio'
  s.summary     = 'Portfolio site builder.'
  s.description = 'This gem allows you to easily create a Portfolio web site to showcase your work.'
  s.license     = 'MIT'

  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- spec/*`.split("\n")

  s.add_dependency 'rails', '~> 6.0'
  s.add_dependency 'devise', '~> 4.7'
  s.add_dependency 'paperclip', '~> 6.1'
  s.add_dependency 'redcarpet', '~> 3.5'
  s.add_dependency 'bootstrap-sass', '~> 3.4'
  s.add_dependency 'bootstrap-sass-extras', '~> 0.0'
  s.add_dependency 'jquery-rails', '~> 4.3'
  s.add_dependency 'sprockets', '~> 4.0'

  s.add_development_dependency 'rdoc'
  s.add_development_dependency 'sqlite3', '~> 1.3'
  s.add_development_dependency 'rspec-rails', '~> 4.0'
  s.add_development_dependency 'factory_girl_rails', '~> 4.5'
  s.add_development_dependency 'faker', '~> 1.5'
  s.add_development_dependency 'simplecov', '~> 0.11'
end
