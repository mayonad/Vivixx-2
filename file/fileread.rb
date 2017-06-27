# Ask for the filename
puts "Type in the filename: "
filename = gets.chomp


#Open file and save it to opened_file variable
opened_file = File.open(filename)


#Print in the terminal screen
puts "Opened filename #{filename}"
puts "=" * 15
print opened_file.read
