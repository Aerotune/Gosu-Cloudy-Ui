require 'gosu'
require './cloudy_ui'

class Window < Gosu::Window
  def initialize
    super 800, 600, false
    CloudyUi.load_images self
  end
  
  def draw
    fill 0xFFFFFFFF
    draw_button_normal
    draw_button_hover
    draw_button_active
    draw_slider1
    draw_slider2
    draw_slider3
  end
  
  def draw_button_normal
    x = 20
    y = 20
    z = 0
    width = 100
    height = 30
    state = :normal
    CloudyUi::Button.draw x, y, z, width, height, state
  end
  
  def draw_button_hover
    x = 20
    y = 60
    z = 0
    width = 100
    height = 30
    state = :hover
    CloudyUi::Button.draw x, y, z, width, height, state
  end
  
  def draw_button_active
    x = 20
    y = 100
    z = 0
    width = 100
    height = 30
    state = :active
    CloudyUi::Button.draw x, y, z, width, height, state
  end
  
  def draw_slider1
    x = 150
    y = 20
    z = 0
    width    = 150
    progress = 0.5
    CloudyUi::Slider.draw x, y, z, width, progress
  end
  
  def draw_slider2
    x = 150
    y = 50
    z = 0
    width    = 150
    progress = 0.2
    center   = 0.5
    CloudyUi::Slider.draw x, y, z, width, progress, center
  end
  
  def draw_slider3
    x = 150
    y = 80
    z = 0
    width    = 150
    progress = 0.5
    center   = 1
    CloudyUi::Slider.draw x, y, z, width, progress, center
  end
  
  def fill color, z=0      
    draw_quad 0,      0,      color,
              width,  0,      color,
              0,      height, color,
              width,  height, color,
              z, mode = :default
  end
end

Window.new.show