module CowTemplate

  def render_cow
    _ = <<COW
       #{@thoughts}   ,__,
        #{@thoughts}  (#{@eyes})____
           (__)    )\\
            #{@tongue}||--|| *

COW
  end

end
