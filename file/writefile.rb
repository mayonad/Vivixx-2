puts "Type in the filename:"
filename = gets.chomp


#Open file in append-plus-read mode and store reference in opened_file variable

opened_file = File.open(filename, 'a+')

#Ask for a new city name
puts "Add another Australian city: "
city = gets.chomp

#Write city name to the file
opened_file.write(city)
opened_file.write("\n")

#Rewind pointer at beginning of file
opened_file.rewind
puts "-" * 15

#Read entire file from beginning to end
print opened_file.read

#We are done with the file
opened_file.close
