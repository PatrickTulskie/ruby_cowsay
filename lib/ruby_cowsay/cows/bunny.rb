module CowTemplate

  def render_cow
    _ = <<COW
  #{@thoughts}
   #{@thoughts}   \\
        \\ /\\
        ( )
      .( o ).

COW
  end

end
