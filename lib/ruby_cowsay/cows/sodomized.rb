module CowTemplate

  def render_cow
    _ = <<COW
      #{@thoughts}                _
       #{@thoughts}              (_)
        #{@thoughts}   ^__^       / \\
         #{@thoughts}  (#{@eyes})\\_____/_\\ \\
            (__)\\       ) /
             #{@tongue} ||----w ((
                ||     ||>> 

COW
  end

end
