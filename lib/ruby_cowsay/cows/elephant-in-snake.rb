module CowTemplate

  def render_cow
    _ = <<COW
   #{@thoughts}
    #{@thoughts}              ....       
           ........    .      
          .            .      
         .             .      
.........              .......
..............................

Elephant inside ASCII snake

COW
  end

end
