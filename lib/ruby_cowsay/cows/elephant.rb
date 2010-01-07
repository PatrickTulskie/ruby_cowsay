module CowTemplate

  def render_cow
    _ = <<COW
 #{@thoughts}     /\\  ___  /\\
  #{@thoughts}   // \\/   \\/ \\\\
     ((    O O    ))
      \\\\ /     \\ //
       \\/  | |  \\/ 
        |  | |  |  
        |  | |  |  
        |   o   |  
        | |   | |  
        |m|   |m|  

COW
  end

end
