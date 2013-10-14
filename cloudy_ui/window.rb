class CloudyUi::Window
  def self.draw window, x, y, z, width, height
    window.draw_quad x       ,y        ,0xFFFFFFFF,
                     x+width ,y        ,0xFFFFFFFF,
                     x+width ,y+height ,0xFFf5f5f5,
                     x       ,y+height ,0xFFf5f5f5, z
                     
    window.draw_line x, y       , 0xFFe4e4e4, x+width   , y      , 0xFFe4e4e4   ,z
    window.draw_line x, y+height, 0xFFCCCCCC, x+width   , y+height+1, 0xFFCCCCCC  ,z
    
    window.draw_line x        ,y,0xFFe4e4e4,x        ,y+height,0xFFCCCCCC,z
    window.draw_line x+width+1,y,0xFFe4e4e4,x+width+1,y+height,0xFFCCCCCC,z
  end
end