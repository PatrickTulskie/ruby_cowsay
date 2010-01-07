module CowTemplate
  
  def render_cow
    _ = <<COW
      #{@thoughts}   ^__^
       #{@thoughts}  (#{@eyes})\\_______
          (__)\\       )\\/\\
           #{@tongue} ||----w |
              ||     ||
COW
  end
  
end