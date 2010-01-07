module CowTemplate

  def render_cow
    _ = <<COW
     #{@thoughts}
      #{@thoughts}
          oO)-.                       .-(Oo
         /__  _\\                     /_  __\\
         \\  \\(  |     ()~()         |  )/  /
          \\__|\\ |    (-___-)        | /|__/
          '  '--'    ==`-'==        '--'  '

COW
  end

end
