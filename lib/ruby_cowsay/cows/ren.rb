module CowTemplate

  def render_cow
    _ = <<COW
   #{@thoughts}
    #{@thoughts}
    ____  
   /# /_\\_
  |  |/o\\o\\
  |  \\\\_/_/
 / |_   |  
|  ||\\_ ~| 
|  ||| \\/  
|  |||_    
 \\//  |    
  ||  |    
  ||_  \\   
  \\_|  o|  
  /\\___/   
 /  ||||__ 
    (___)_)

COW
  end

end
