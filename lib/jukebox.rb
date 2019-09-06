def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, idx|
    puts "#{idx + 1}. #{song}"
  end
end

def play(songs)
  skip = nil
  puts "Please enter a song name or number:"
  input = gets.strip
  songs.each_with_index do |song, idx|
    if input == song || input.to_i == idx + 1
      puts "Playing #{song}"
      skip = true

  end
end
if skip != true
  puts "Invalid input, please try again"
end
end

def exit_jukebox
  puts "Goodbye"
end

def run
  puts "Please enter a command:"
  input = gets.strip

  case input
  when "exit"
    break
  when "play"
    play
    break
  when "list"
    list
    break
  when "help"
    help
    break
  end


end
