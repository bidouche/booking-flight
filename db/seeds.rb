airports = ['LHR', 'CDG', 'AMS', 'FRA', 'IST', 'MAD', 'BCN', 'LGW', 'MUC', 'FCO']

airports.each do |airport|
    Airport.create!(airport_code: airport)
end


2000.times do |index|
  Flight.create!(
      duration: rand(3600..10000),
      departure_date: rand(DateTime.new(2018,11,11)..DateTime.new(2018,11,18)),
      departure_airport_id: rand(1..10),
      arrival_airport_id: rand(1..10))
end