module CowTemplate

  def render_cow
    _ = <<COW
   #{@thoughts}
    #{@thoughts}
        .--.
       |o_o |
       |:_/ |
      //   \\ \\
     (|     | )
    /'\\_   _/`\\
    \\___)=(___/


COW
  end

end
