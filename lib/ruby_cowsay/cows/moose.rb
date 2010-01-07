module CowTemplate

  def render_cow
    _ = <<COW
  #{@thoughts}
   #{@thoughts}   \\_\\_    _/_/
    #{@thoughts}      \\__/
           (#{@eyes})\\_______
           (__)\\       )\\/\\
            #{@tongue} ||----w |
               ||     ||

COW
  end

end
