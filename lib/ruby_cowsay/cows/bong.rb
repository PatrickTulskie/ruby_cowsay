module CowTemplate

  def render_cow
    _ = <<COW
         #{@thoughts}
          #{@thoughts}
            ^__^ 
    _______/(#{@eyes})
/\\/(       /(__)
   | W----|| |~|
   ||     || |~|  ~~
             |~|  ~
             |_| o
             |#|/
            _+#+_

COW
  end

end
