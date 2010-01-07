module CowTemplate

  def render_cow
    _ = <<COW
     #{@thoughts}
      #{@thoughts}
        ,__, |    | 
        (oo)\\|    |___
        (__)\\|    |   )\\_
             |    |_w |  \\
             |    |  ||   *

             Cower....

COW
  end

end
