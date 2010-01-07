class Cow
  
  def initialize(options={})
    # Load the cow into our current class
    cow_template = options[:cow] || 'default'
    require "#{File.expand_path(File.dirname(__FILE__))}/cows/#{cow_template}"
    Cow.class_eval 'include CowTemplate'
    @max_line_length = 36
    @eyes, @tongue = construct_face(options[:face_type])
  end
  
  def say(message, balloon_type = 'say')
    construct_balloon(message, balloon_type) + "\n" + render_cow
  end
  
  private
  
  def construct_balloon(message, balloon_type)
    balloon_lines = ""
    @border = [] # up-left, up-right, down-left, down-right, left, right
    if balloon_type == 'think'
      @thoughts = 'o'
      @border = %w{ ( ) ( ) ( ) }
    elsif message.length < 36
      @thoughts = '\\'
      @border = %w{ < > }
    else
      @thoughts = '\\'
      @border = %w{ / \\ \\ / | | }
    end

    formatted_message = format_message(message)
    if formatted_message.length == 1
      longest_line = formatted_message.first.length
      @balloon_lines =  " #{'_' * (longest_line + 2)} \n"
      @balloon_lines << "#{@border.first} #{formatted_message.first} #{@border.last}\n"
      @balloon_lines << " #{'-' * (longest_line + 2)} "
    else
      longest_line = formatted_message.map { |line| line.length }.sort.last
      @balloon_lines =  " #{'_' * (longest_line + 2)} \n"
      formatted_message.each_with_index do |line, index|
        case index
        when 0; left, right = @border[0], @border[1]
        when (formatted_message.length - 1); left, right = @border[2], @border[3]
        else; left, right = @border[4], @border[5]
        end
        @balloon_lines << "#{left} #{line}#{' ' * (longest_line - line.length)} #{right}\n"
      end
      @balloon_lines << " #{'-' * (longest_line + 2)} "
    end

    return @balloon_lines
  end
  
  def construct_face(type = 'default')
    { 'default' => ["oo", "  "],
      'borg' => ["==", "  "],
      'dead' => ["==", "U "],
      'greedy' => ["$$", "  "],
      'paranoid' => ["@@", "  "],
      'stoned' => ["**", "U "],
      'tired' => ["--", "  "],
      'wired' => ["OO", "  "],
      'young' => ["..", "  "]
    }[type || 'default']
  end
  
  
  def format_message(message)
    message_lines = []
    if message.length > @max_line_length
      words, line = message.split, ""
      for word in words
        if line.length > 0 && (line.length + word.length) > @max_line_length
          message_lines << line
          line = ""
        end
        if word.length > @max_line_length
          broken_word = split_word(word)
          line = broken_word.pop
          message_lines = message_lines.concat(broken_word)
        elsif line.length == 0
          line = word
        else
          line = "#{line} #{word}"
        end
      end
      message_lines << line
    else
      message_lines << message
    end

    return message_lines
  end
  
  def split_word(word)
    return [word] unless word.length > @max_line_length
    lines = []
    while word.length > 0 do
      lines << word.slice!(0..(@max_line_length - 1))
    end
    return lines.compact
  end
  
end