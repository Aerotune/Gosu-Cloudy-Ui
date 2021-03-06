require 'gosu'
require_relative '../lib/cloudy_ui'

class Window < Gosu::Window
  def initialize
    super 800, 600, false
    CloudyUi.load_images self
  end
  
  def draw
    fill 0xFFFFFFFF
    draw_window
    draw_button_normal
    draw_button_hover
    draw_button_active
    draw_slider1
    draw_slider2
    draw_slider3
    draw_radio_full
    draw_radio_empty
    draw_dynamic_field
    draw_scrollbar
    
  end
  
  def draw_window
    CloudyUi::Window.draw self, 10, 10, 0, 305, 435
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
    y = 25
    z = 0
    width    = 150
    progress = 0.5
    CloudyUi::Slider.draw x, y, z, width, progress
  end
  
  def draw_slider2
    x = 150
    y = 55
    z = 0
    width    = 150
    progress = 0.2
    center   = 0.5
    CloudyUi::Slider.draw x, y, z, width, progress, center
  end
  
  def draw_slider3
    x = 150
    y = 85
    z = 0
    width    = 150
    progress = 0.5
    center   = 1
    CloudyUi::Slider.draw x, y, z, width, progress, center
  end
  
  def draw_radio_full
    x = 145
    y = 110
    z = 0
    CloudyUi::RadioButton.draw x, y, z, :full
  end
  
  def draw_radio_empty
    x = 170
    y = 110
    z = 0
    CloudyUi::RadioButton.draw x, y, z, :empty
  end
  
  def draw_dynamic_field
    CloudyUi::DynamicField.draw self, 150, 150, 0, 148, 280
  end
  
  def draw_scrollbar
    x = 295
    y = 150
    z = 0
    height = 280
    CloudyUi::Scrollbar.draw x, y, z, height, 0.1, 0.9
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