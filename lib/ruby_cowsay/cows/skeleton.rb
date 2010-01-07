module CowTemplate

  def render_cow
    _ = <<COW
          #{@thoughts}      (__)      
           #{@thoughts}     /#{@eyes}|  
            #{@thoughts}   (_"_)*+++++++++*
                   //I#\\\\\\\\\\\\\\\\I\\
                   I[I|I|||||I I `
                   I`I'///'' I I
                   I I       I I
                   ~ ~       ~ ~
                     Scowleton

COW
  end

end
