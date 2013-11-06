require './lib/cloudy_ui/version.rb'

Gem::Specification.new do |s|
  s.name        = 'cloudy-ui'
  s.version     = CloudyUi::VERSION
  s.platform    = Gem::Platform::RUBY
  s.summary     = 'UI drawing kit for Gosu'
  s.description = 'Cloudy UI is an add-on library for Gosu that handles drawing of user interface elements. Layout and input handling are left up to the programmer. Graphics are sourced from <http://kbsportfolio.com/2011/10/16/resource-for-designer-cloudy-ui-kit/>.'
  
  s.authors  = ['Bue Grønlund', 'erisdev']
  s.email    = []
  s.homepage = 'https://github.com/Aerotune/Gosu-Cloudy-Ui'
  s.license  = 'public domain'
  
  s.require_paths = ['lib']
  s.files         = Dir.glob %w[
    data/themes/**/*.png
    examples/*.rb
    lib/**/*.rb
    LICENSE
    README.md
    screenshot.png
  ]
  
  s.add_dependency 'gosu', '~> 0.7.48'
end
