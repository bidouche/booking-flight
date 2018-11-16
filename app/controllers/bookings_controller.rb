class BookingsController < ApplicationController
	def new
		@booking = Booking.new
		 #puts @booking.inspect
		 puts @flights.first.inspect
	end
	def create
		
		puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
		puts params
		@airport_arrival = Airport.find_by(airport_code: params[:booking][:arrival_airport_id])
		@arrival_airport_id = @airport_arrival.id
		@airport_departure = Airport.find_by(airport_code: params[:booking][:departure_airport_id])
		@departure_airport_id = @airport_departure.id
		
		
		@flight= Flight.find_by(departure_date: params[:booking][:departure_date],arrival_airport: @arrival_airport_id, departure_airport: @departure_airport_id, duration: params[:booking][:duration])
		puts '#################'
		@flight_id = @flight.id
		puts @flight_id
		@booking = Booking.create(flight_id: @flight_id)
		puts @booking.inspect
		#redirect_to root_path


	end
	def show
		@flight_id = params[:id]
		@flight = Flight.find(@flight_id)
		puts '##################'
		puts @flight.inspect
	end
end
