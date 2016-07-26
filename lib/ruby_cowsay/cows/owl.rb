module CowTemplate

  def render_cow
    _ = <<COW
    #{@thoughts}   ,   .   ,
     #{@thoughts}  )-_"""_-(
       ./ o\\ /o \\.
      . \\__/ \\__/ .
      ...   V   ...
      ... - - - ...
       .   - -   .
        `-.....-´
COW
  end

end
