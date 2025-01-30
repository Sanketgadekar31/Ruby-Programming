dial_book = {
  "newyork" => "212",
  "pune" => "732",
  "nashik" => "323",
  "shirdi" => "435",
  "dubai" => "221",
  "indore" => "454",
  "maiami" => "465",
  "pimpri" => "435"
}

def get_city_names(somehash)
  somehash.keys
end

def get_area_code(somehash, key)
  somehash[key]
end

loop do
  puts "Want to lookup for an area code?(Y/N)"
  answer = gets.chomp.downcase
  break if answer != "y"
  puts "For which city name you want to get the area-code: "
  puts get_city_names(dial_book)

  puts "Enter the city name"
  input = gets.chomp.downcase
  if dial_book.include?(input)
    puts "Area code for #{input} is #{get_area_code(dial_book, input)}"
  else
    puts "INVALID ENTRY!!"
  end

end