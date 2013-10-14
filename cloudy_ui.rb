module CloudyUi
  require_relative 'cloudy_ui/radio_button'
  require_relative 'cloudy_ui/button'
  require_relative 'cloudy_ui/slider'
  require_relative 'cloudy_ui/scrollbar'
  require_relative 'cloudy_ui/window'
  require_relative 'cloudy_ui/dynamic_field'
  
  def self.load_images window, load_path=File.join(File.dirname(__FILE__), 'cloudy_ui/images')
    CloudyUi::RadioButton .load_images window, load_path
    CloudyUi::Button      .load_images window, load_path
    CloudyUi::Slider      .load_images window, load_path
    CloudyUi::Scrollbar   .load_images window, load_path
  end
end