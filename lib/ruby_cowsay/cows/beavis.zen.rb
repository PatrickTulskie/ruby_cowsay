module CowTemplate

  def render_cow
    _ = <<COW
   #{@thoughts}         __------~~-,
    #{@thoughts}      ,'            ,
          /               \\
         /                :
        |                  '
        |                  |
        |                  |
         |   _--           |
         _| =-.     .-.   ||
         o|/o/       _.   |
         /  ~          \\ |
       (____\@)  ___~    |
          |_===~~~.`    |
       _______.--~     |
       \\________       |
                \\      |
              __/-___-- -__
             /            _ \\

COW
  end

end
