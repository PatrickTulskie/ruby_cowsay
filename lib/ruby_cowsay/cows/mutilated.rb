module CowTemplate

  def render_cow
    _ = <<COW
       #{@thoughts}   \\_______
 v__v   #{@thoughts}  \\   O   )
 (#{@eyes})      ||----w |
 (__)      ||     ||  \\/\\
  #{@tongue}

COW
  end

end
