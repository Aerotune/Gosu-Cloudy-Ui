class CloudyUi::RadioButton
  class << self
    def draw x, y, z, state
      case state
      when :empty; @@empty.draw x, y, z
      when :full;  @@full .draw x, y, z
      end
    end
    
    def load_images window, load_path
      @@empty = Gosu::Image.new window, File.join(load_path, 'radio_empty.png')
      @@full  = Gosu::Image.new window, File.join(load_path, 'radio_full.png')
    end
  end
end