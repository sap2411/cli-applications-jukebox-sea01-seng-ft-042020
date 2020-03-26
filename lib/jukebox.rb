songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each.with_index(1) {|value, index| 
  puts "#{index}. #{value}"
  }
end 

def play(songs)
  puts "Please enter a song name or number:"
  reply = gets.strip
  if (1..9).to_a.index(reply.to_i) != nil
    puts "Playing #{songs[reply.to_i - 1]}"
  elsif songs.index(reply) != nil
    puts "Playing #{reply}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
 loop {
    puts "Please enter a command:"
    input = gets.strip
    if input == "exit"
      exit_jukebox
      break
    elsif input == "play"
      play(songs)
    elsif input == "list"
      list(songs)
    else input == "help"
      help
    end
   }
end