require 'csv'

def clean_phone(homephone)
  if homephone.length < 10
    puts " this is a not valid number"
  elsif homephone.length == 10
    puts " this is a valid length phone number"
  elsif homephone.length == 11 && homephone[0] == 1
    homephone[1..10]
  elsif homephone.length == 11 && homephone[0] != 1
    puts " this is not a valid number"
  else 
    puts " this is not valid"
  end
end


puts "EventManager initialized."
contents = CSV.open 'event_attendees.csv', headers: true, header_converters: :symbol

contents.each do |row|
  name = row[:first_name]
  phone = clean_phone(row[:homephone])
  print "#{phone} , #{name}"
end