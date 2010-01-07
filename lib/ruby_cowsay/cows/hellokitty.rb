module CowTemplate

  def render_cow
    _ = <<COW
  #{@thoughts}
   #{@thoughts}
      /\\_)o<
     |      \\
     | O . O|
      \\_____/

COW
  end

end
