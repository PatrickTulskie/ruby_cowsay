module CowTemplate

  def render_cow
    _ = <<COW
  #{@thoughts}   ^__^
   #{@thoughts}  (#{@eyes})\\_______        ________
      (__)\\       )\\/\\    |Super |
       #{@tongue} ||----W |       |Milker|
          ||    UDDDDDDDDD|______|

COW
  end

end
