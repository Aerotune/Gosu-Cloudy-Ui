class CloudyUi::Scrollbar
  class << self
    ## x, y, z, as onscreen coordinates
    ## scrollbar height in pixels
    ## handle_top, handle_bottom in range 0..1
    def draw x, y, z, height, handle_top, handle_bottom
      @@scrollbar_middle  .draw x, y+@@scrollbar_top.height-2, z, 1, height-@@scrollbar_top.height*2+4
      @@scrollbar_top     .draw x, y-2, z
      @@scrollbar_bottom  .draw x, y+height-@@scrollbar_top.height+1, z
      
      height -= @@handle_top.height
      handle_top_y    = y + handle_top    * height + @@handle_top.height - 2
      handle_bottom_y = y + handle_bottom * height + 1
      handle_height   = handle_bottom_y - handle_top_y
      handle_height   = 0 if handle_height < 0
      handle_width = @@scrollbar_middle.width
      
      @@window.draw_quad x+1                ,handle_top_y-2                 ,0xFFfafafa,
                         x-1 + handle_width ,handle_top_y-2                 ,0xFFfafafa,
                         x-1 + handle_width ,handle_top_y+1 + handle_height ,0xFFe9e9e9,
                         x+1                ,handle_top_y+1 + handle_height ,0xFFe9e9e9, z
      
      @@handle_middle .draw x+1, handle_top_y, z, 1, handle_height
      @@handle_top    .draw x+1, handle_top_y - @@handle_top.height, z
      @@handle_bottom .draw x+1, handle_bottom_y, z
    end
    
    def load_images window, load_path
      @@window = window
      @@scrollbar_top     = Gosu::Image.new window, File.join(load_path, 'scrollbar_vertical_top.png'),           true
      @@scrollbar_middle  = Gosu::Image.new window, File.join(load_path, 'scrollbar_vertical_middle.png'),        true
      @@scrollbar_bottom  = Gosu::Image.new window, File.join(load_path, 'scrollbar_vertical_bottom.png'),        true
      @@handle_top        = Gosu::Image.new window, File.join(load_path, 'scrollbar_vertical_handle_top.png'),    true
      @@handle_middle     = Gosu::Image.new window, File.join(load_path, 'scrollbar_vertical_handle_middle.png'), true
      @@handle_bottom     = Gosu::Image.new window, File.join(load_path, 'scrollbar_vertical_handle_bottom.png'), true
    end
  end
end