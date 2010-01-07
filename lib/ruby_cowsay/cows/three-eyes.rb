module CowTemplate

  def render_cow
    _ = <<COW
        #{@thoughts}  ^___^
         #{@thoughts} (#{@eyes})\\_______
           (___)\\       )\\/\\
            #{@tongue}  ||----w |
                ||     ||

COW
  end

end
