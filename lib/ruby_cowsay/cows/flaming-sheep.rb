module CowTemplate

  def render_cow
    _ = <<COW
  #{@thoughts}            .    .     .   
   #{@thoughts}      .  . .     `  ,     
    #{@thoughts}    .; .  : .' :  :  : . 
     #{@thoughts}   i..`: i` i.i.,i  i . 
      #{@thoughts}   `,--.|i |i|ii|ii|i: 
           U#{@eyes}U\\.'\@\@\@\@\@\@`.||' 
           \\__/(\@\@\@\@\@\@\@\@\@\@)'  
                (\@\@\@\@\@\@\@\@)    
                `YY~~~~YY'    
                 ||    ||     

COW
  end

end
