module CowTemplate

  def render_cow
    _ = <<COW
  #{@thoughts}     .    _  .    
   #{@thoughts}    |\\_|/__/|    
       / / \\/ \\  \\  
      /__|O||O|__ \\ 
     |/_ \\_/\\_/ _\\ |  
     | | (____) | ||  
     \\/\\___/\\__/  // 
     (_/         ||
      |          ||
      |          ||\\   
       \\        //_/  
        \\______//
       __ || __||
      (____(____)

COW
  end

end
