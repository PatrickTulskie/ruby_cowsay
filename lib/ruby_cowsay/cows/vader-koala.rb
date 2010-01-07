module CowTemplate

  def render_cow
    _ = <<COW
   #{@thoughts}
    #{@thoughts}        .
     .---.  //
    Y|o o|Y// 
   /_(i=i)K/ 
   ~()~*~()~  
    (_)-(_)   

     Darth 
     Vader    
     koala        

COW
  end

end
