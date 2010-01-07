module CowTemplate

  def render_cow
    _ = <<COW
    #{@thoughts}
     #{@thoughts}
    ^__^         /
    (#{@eyes})\\_______/  _________
    (__)\\       )=(  ____|_ \\_____
   #{@tongue}   ||----w |  \\ \\     \\_____ |
        ||     ||   ||           ||

COW
  end

end
