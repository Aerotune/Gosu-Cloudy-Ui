Gosu-Cloudy-Ui
==============

![Current elements](/screenshot.png)

Drawing UI Kit based on http://kbsportfolio.com/2011/10/16/resource-for-designer-cloudy-ui-kit/

Gem on rubygems http://rubygems.org/gems/cloudy_ui

Make sure you've loaded CloudyUi

    require 'cloudy_ui'

Load images before usage

    CloudyUi::load_images window

Button states are :normal, :hover or :active

    CloudyUi::Button.draw x, y, z, width, height, state
    
progress slided on slider in range 0..1

center of blue selection on slider in range 0..1
    
    CloudyUi::Slider.draw x, y, z, width, progress, center=0

RadioButton states are :full and :empty

    CloudyUi::RadioButtondraw x, y, z, state

A Window, an area for the ui elements
    
    CloudyUi::Window.draw window, x, y, z, width, height