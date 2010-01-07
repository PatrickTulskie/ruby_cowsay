module CowTemplate

  def render_cow
    _ = <<COW
        #{@thoughts}    ,-^-.
         #{@thoughts}   !oYo!
          #{@thoughts} /./=\\.\\______
               ##        )\\/\\
                ||-----w||
                ||      ||

               Cowth Vader

COW
  end

end
