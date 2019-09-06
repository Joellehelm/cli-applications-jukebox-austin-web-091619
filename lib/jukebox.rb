def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, idx|
    puts "#{idx}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  songs.each_with_index do |song, idx|
    if input == song || input == idx
      puts "Playing #{song}"
    else
      puts "Invalid input, please try again"
  end
end
end

def exit_jukebox
  puts "Goodbye"
end
