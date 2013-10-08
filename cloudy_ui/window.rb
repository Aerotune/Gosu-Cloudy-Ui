class CloudyUi::Window
  def self.draw window, x, y, z, width, height
    window.draw_quad x       ,y        ,0xFFf4f4f4,
                     x+width ,y        ,0xFFf4f4f4,
                     x+width ,y+height ,0xFFe3e3e3,
                     x       ,y+height ,0xFFe3e3e3, z
                     
    window.draw_line x, y-1       , 0xFFdbdbdb, x+width   , y-1      , 0xFFdbdbdb   ,z
    window.draw_line x, y         , 0xFFFFFFFF, x+width   , y        , 0xFFFFFFFF   ,z
    window.draw_line x, y+height+1, 0xFF989898, x+width   , y+height+1, 0xFF989898  ,z
    
    window.draw_line x        ,y-1,0xFFdbdbdb,x        ,y+height,0xFF989898,z
    window.draw_line x+width+1,y-1,0xFFdbdbdb,x+width+1,y+height,0xFF989898,z
  end
end