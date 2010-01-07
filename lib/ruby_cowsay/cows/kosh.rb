module CowTemplate

  def render_cow
    _ = <<COW
    #{@thoughts}
     #{@thoughts}
      #{@thoughts}
  ___       _____     ___
 /   \\     /    /|   /   \\
|     |   /    / |  |     |
|     |  /____/  |  |     |     
|     |  |    |  |  |     |
|     |  | {} | /   |     |
|     |  |____|/    |     |
|     |    |==|     |     |
|      \\___________/      |
|                         |
|                         |

COW
  end

end
