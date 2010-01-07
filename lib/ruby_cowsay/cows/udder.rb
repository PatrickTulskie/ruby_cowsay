module CowTemplate

  def render_cow
    _ = <<COW
  #{@thoughts}
   #{@thoughts}    (__)               
        #{@eyes}\\               
       ('') \\---------     
        #{@tongue}\\           \\    
           |          |\\   
           ||---(  )_|| *  
           ||    UU  ||    
           ==        ==    

COW
  end

end
