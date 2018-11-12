class FlightsController < ApplicationController
	def index
		
		@airport = Airport.all.map { |u| [u.airport_code, u.id] }
		if params[:search]
		puts '@@@@@@@@@@@@@@@@@@@@@@@@@@@'
		params[:search][:departure_id]
		@flights = Flight.where(departure_airport: params[:search][:departure_id], arrival_airport: params[:search][:arrival_id], departure_date: params[:search][:departure_date])
		puts '#####################################'
		puts @flights.inspect
		end
	end
	
end
