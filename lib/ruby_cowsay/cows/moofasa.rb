module CowTemplate

  def render_cow
    _ = <<COW
       #{@thoughts}    ____
        #{@thoughts}  /    \\
          | ^__^ |
          | (#{@eyes}) |______
          | (__) |      )\\/\\
           \\____/|----w |
                ||     ||

	         Moofasa

COW
  end

end
