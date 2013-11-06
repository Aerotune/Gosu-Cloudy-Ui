class CloudyUi::DynamicField
  def self.draw window, x, y, z, width, height
    window.draw_quad x       ,y        ,0xFFe9e9e9,
                     x+width ,y        ,0xFFe9e9e9,
                     x+width ,y+height ,0xFFe9e9e9,
                     x       ,y+height ,0xFFe9e9e9, z
                     
    window.draw_line x, y-1       , 0xFFc6c6c6, x+width   , y-1      , 0xFFc6c6c6   ,z
    window.draw_line x, y         , 0xFFe0e0e0, x+width   , y        , 0xFFe0e0e0   ,z
    window.draw_line x, y+height, 0xFFc9c9c9, x+width   , y+height, 0xFFc9c9c9  ,z
    window.draw_line x, y+height+1, 0xFFf7f7f7, x+width   , y+height+1, 0xFFf7f7f7  ,z
    
    window.draw_line x        ,y-1,0xFFcacaca,x        ,y+height-1,0xFFd2d2d2,z
    window.draw_line x+width+1,y-1,0xFFcacaca,x+width+1,y+height-1,0xFFd2d2d2,z
  end
end