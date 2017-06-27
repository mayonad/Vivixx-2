require 'csv'

CSV.foreach('CSV2.csv',headers:true) do |row|
  puts "person #{row['Firstname']}"
end


require 'csv'
require 'SecureRandom'


#skip past the headers by setting the headers to true

CSV.open('CSV2.csv', 'a+') do |csv_file|

  #add a row to the cv File

csv_file << [SecureRandom.uuid, 'Bob', 'McGee',42]
end
