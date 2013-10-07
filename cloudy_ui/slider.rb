class CloudyUi::Slider
  class << self
    ## x, y, z, as onscreen coordinates
    ## slideable width in pixels
    ## progress slided on slider in range 0..1
    ## center of blue selection on slider in range 0..1
    def draw x, y, z, width, progress, center=0
      selected = progress * width
      @@middle              .draw_rot  x                ,y   ,z ,0 ,0   ,0 ,width, 1
      @@left_end            .draw_rot  x                ,y   ,z ,0 ,1   ,0
      @@right_end           .draw_rot  x+width          ,y   ,z ,0 ,0   ,0 ,1     , 1
      @@selected_middle     .draw_rot  x+center*width   ,y   ,z ,0 ,0   ,0 ,(progress-center)*width, 1.0
      if    center == 0; @@selected_left_end  .draw_rot  x       ,y   ,z ,0 ,1 ,0
      elsif center == 1; @@selected_right_end .draw_rot  x+width ,y   ,z ,0 ,0 ,0
      end
      @@handle              .draw_rot  selected + x     ,y-7 ,z ,0 ,0.5 ,0
    end
    
    def load_images window, load_path
      @@handle             = Gosu::Image.new window,  File.join( load_path, 'slider_handle.png'             ), true
      @@middle             = Gosu::Image.new window,  File.join( load_path, 'slider_middle.png'             ), true 
      @@left_end           = Gosu::Image.new window,  File.join( load_path, 'slider_left_end.png'           ), true 
      @@right_end          = Gosu::Image.new window,  File.join( load_path, 'slider_right_end.png'          ), true 
      @@selected_left_end  = Gosu::Image.new window,  File.join( load_path, 'slider_selected_left_end.png'  ), true 
      @@selected_right_end = Gosu::Image.new window,  File.join( load_path, 'slider_selected_right_end.png' ), true 
      @@selected_middle    = Gosu::Image.new window,  File.join( load_path, 'slider_selected_middle.png'    ), true 
    end
  end
end