class CloudyUi::Button
  class << self
    def draw x, y, z, width, height, state
      #begin
      #  @@images 
      #rescue NameError
      #  raise "Must call #{self}.load_images(window, load_path) before using #{self}"
      #end
      
      @@window.draw_quad x+1       ,y+1         ,@@images[state][:color][0],
                         x+width-1 ,y+1         ,@@images[state][:color][0],
                         x+width-1 ,y+height-1  ,@@images[state][:color][1],
                         x+1       ,y+height-1  ,@@images[state][:color][1], z
      
      height_margin    = @@images[state][:top_left].height
      width_margin     = @@images[state][:top_left].width
      
      
      @@images[state][:top_left]      .draw x                    ,y                       ,z
      @@images[state][:top_right]     .draw x+width-width_margin ,y                       ,z
      @@images[state][:bottom_left]   .draw x                    ,y+height-height_margin  ,z
      @@images[state][:bottom_right]  .draw x+width-width_margin ,y+height-height_margin  ,z
      @@images[state][:left]          .draw x                    ,y+height_margin         ,z ,1 ,height-height_margin*2
      @@images[state][:right]         .draw x+width-width_margin ,y+height_margin         ,z ,1 ,height-height_margin*2
      @@images[state][:top]           .draw x+width_margin       ,y                       ,z ,width-width_margin*2
      @@images[state][:bottom]        .draw x+width_margin       ,y+height-height_margin  ,z ,width-width_margin*2
      
    end
    
    
    def load_images window, load_path
      @@window ||= window
      @@images ||= {
        active: {
          left:           Gosu::Image.new( window, File.join(load_path, 'button_active_left.png'           ), true),
          right:          Gosu::Image.new( window, File.join(load_path, 'button_active_right.png'          ), true),
          bottom:         Gosu::Image.new( window, File.join(load_path, 'button_active_bottom.png'         ), true),
          bottom_right:   Gosu::Image.new( window, File.join(load_path, 'button_active_bottom_right.png'   ), true),
          bottom_left:    Gosu::Image.new( window, File.join(load_path, 'button_active_bottom_left.png'    ), true),
          top:            Gosu::Image.new( window, File.join(load_path, 'button_active_top.png'            ), true),
          top_right:      Gosu::Image.new( window, File.join(load_path, 'button_active_top_right.png'      ), true),
          top_left:       Gosu::Image.new( window, File.join(load_path, 'button_active_top_left.png'       ), true),
          color:          [0xFF6F6F6F, 0xFF666666]
        },
        hover: {
          left:           Gosu::Image.new( window, File.join(load_path, 'button_hover_left.png'            ), true),
          right:          Gosu::Image.new( window, File.join(load_path, 'button_hover_right.png'           ), true),
          bottom:         Gosu::Image.new( window, File.join(load_path, 'button_hover_bottom.png'          ), true),
          bottom_right:   Gosu::Image.new( window, File.join(load_path, 'button_hover_bottom_right.png'    ), true),
          bottom_left:    Gosu::Image.new( window, File.join(load_path, 'button_hover_bottom_left.png'     ), true),
          top:            Gosu::Image.new( window, File.join(load_path, 'button_hover_top.png'             ), true),
          top_right:      Gosu::Image.new( window, File.join(load_path, 'button_hover_top_right.png'       ), true),
          top_left:       Gosu::Image.new( window, File.join(load_path, 'button_hover_top_left.png'        ), true),
          color:          [0xFFFBFBFB, 0xFFE9E9E9]
        },
        normal: {
          left:          Gosu::Image.new( window, File.join(load_path, 'button_normal_left.png'           ), true),
          right:         Gosu::Image.new( window, File.join(load_path, 'button_normal_right.png'          ), true),
          bottom:        Gosu::Image.new( window, File.join(load_path, 'button_normal_bottom.png'         ), true),
          bottom_right:  Gosu::Image.new( window, File.join(load_path, 'button_normal_bottom_right.png'   ), true),
          bottom_left:   Gosu::Image.new( window, File.join(load_path, 'button_normal_bottom_left.png'    ), true),
          top:           Gosu::Image.new( window, File.join(load_path, 'button_normal_top.png'            ), true),
          top_right:     Gosu::Image.new( window, File.join(load_path, 'button_normal_top_right.png'      ), true),
          top_left:      Gosu::Image.new( window, File.join(load_path, 'button_normal_top_left.png'       ), true),
          color:         [0xFFF9F9F9, 0xFFE9E9E9]
        }        
      }
    end
  end
end

