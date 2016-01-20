movies = {
  memento: 4,
  primer: 3,
  ishtar: 1
}

puts "What would you like to do?"
puts "Type 'add', 'update', 'display', or 'delete'."

choice = gets.chomp.downcase
case choice
when 'add'
  puts "What movie do you want to add?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "What's the rating?(0-4)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been added with a rating of #{rating}."
  else
    puts "That movie already exists."
  end
when 'update'
  puts "What do you want to update?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found."
  else
    puts "What's the new rating?(0-4)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{movie} has been added with a rating of #{rating}."
  end
when 'display'
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
when 'delete'
  puts "What do you want to delete?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    movies.delete(title.to_sym)
    puts "#{title} has been removed."
  end
else
  puts "Sorry, I didn't understand you."
end