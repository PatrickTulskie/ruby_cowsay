module CowTemplate

  def render_cow
    _ = <<COW
  #{@thoughts}
   #{@thoughts}
       __     
      U#{@eyes}U\\.'\@\@\@\@\@\@`.
      \\__/(\@\@\@\@\@\@\@\@\@\@)
           (\@\@\@\@\@\@\@\@)
           `YY~~~~YY'
            ||    ||

COW
  end

end
