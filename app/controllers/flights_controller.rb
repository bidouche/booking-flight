class FlightsController < ApplicationController
	def index
		@airport = Airport.all.map { |u| [u.airport_code, u.id] }
		puts '@@@@@@@@@@@@@@@@@@@@@@@@@@@'
		puts params[:search][:departure_id]
		@fligths = Flight.where(departure_airport: 3)
		puts '#####################################'
		puts @flights.inspect

	end
end
