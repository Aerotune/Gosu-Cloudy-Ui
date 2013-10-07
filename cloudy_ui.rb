module CloudyUi
  require_relative 'cloudy_ui/button'
  require_relative 'cloudy_ui/slider'
  
  def self.load_images window, load_path=File.join(Dir.pwd, 'cloudy_ui/images')
    CloudyUi::Button.load_images window, load_path
    CloudyUi::Slider.load_images window, load_path
  end
end