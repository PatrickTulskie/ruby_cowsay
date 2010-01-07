module CowTemplate

  def render_cow
    _ = <<COW
  #{@thoughts}
   #{@thoughts}
       ___  
     {~._.~}
      ( Y )
     ()~*~()   
     (_)-(_)   

COW
  end

end
