module CowTemplate

  def render_cow
    _ = <<COW
      #{@thoughts}                _
       #{@thoughts}              (_)   <-- TeleBEARS
        #{@thoughts}   ^__^       / \\
         #{@thoughts}  (#{@eyes})\\_____/_\\ \\
            (__)\\  you  ) /
             #{@tongue} ||----w ((
                ||     ||>> 

COW
  end

end
