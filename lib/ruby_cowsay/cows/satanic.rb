module CowTemplate

  def render_cow
    _ = <<COW
     #{@thoughts}
      #{@thoughts}  (__)  
         (\\/)  
  /-------\\/    
 / | 666 ||    
*  ||----||      
   ~~    ~~      

COW
  end

end
