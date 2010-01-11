class Cow
  
  attr_accessor :cow_type, :eyes, :tongue, :face_type
  
  FACE_TYPES = {
    'default' => ["oo", "  "],
    'borg' => ["==", "  "],
    'dead' => ["==", "U "],
    'greedy' => ["$$", "  "],
    'paranoid' => ["@@", "  "],
    'stoned' => ["**", "U "],
    'tired' => ["--", "  "],
    'wired' => ["OO", "  "],
    'young' => ["..", "  "]
  }
  MAX_LINE_LENGTH = 36
  
  # ====================
  # = Instance Methods =
  # ====================
  
  def initialize(options={})
    @cow_type = Cow.cows.include?(options[:cow]) ? options[:cow] : 'default'
    require "#{File.expand_path(File.dirname(__FILE__))}/cows/#{@cow_type}"
    Cow.class_eval 'include CowTemplate'
    @face_type = Cow.faces.include?(options[:face_type]) ? options[:face_type] : 'default'
    set_eyes_and_tongue!
  end
  
  def say(message, balloon_type = 'say')
    construct_balloon(message, balloon_type) + "\n" + render_cow
  end
  
  def think(message)
    construct_balloon(message, 'think') + "\n" + render_cow
  end
  
  def set_eyes_and_tongue!
    @eyes, @tongue = construct_face(@face_type)
  end
  
  alias_method :set_face, :face_type=
  def face_type=(face)
    set_face face
    set_eyes_and_tongue!
  end
  
  # =================
  # = Class Methods =
  # =================
  def self.faces
    FACE_TYPES.keys.sort
  end
  
  def self.cows
    Dir.new("#{File.expand_path(File.dirname(__FILE__))}/cows/").entries.inject([]) { |files, cow_file| files << cow_file.gsub('.rb', '') if cow_file =~ /\.rb/; files }
  end
  
  def self.say(message, type = 'default', face = 'default')
    Cow.new({ :cow => type, :face_type => face }).say(message)
  end
  
  def self.think(message, type = 'default', face = 'default')
    Cow.new({ :cow => type, :face_type => face }).think(message)
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
    FACE_TYPES[type || 'default']
  end
  
  def format_message(message)
    message_lines = []
    if message.length > MAX_LINE_LENGTH
      words, line = message.split, ""
      for word in words
        if line.length > 0 && (line.length + word.length) > MAX_LINE_LENGTH
          message_lines << line
          line = ""
        end
        if word.length > MAX_LINE_LENGTH
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
    return [word] unless word.length > MAX_LINE_LENGTH
    lines = []
    while word.length > 0 do
      lines << word.slice!(0..(MAX_LINE_LENGTH - 1))
    end
    return lines.compact
  end
  
end