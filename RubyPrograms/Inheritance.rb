module Mod
	def inmodule(type)
		puts "We are dealing with #{type}"
	end
end


class Vehicle
	include Mod
	def initialize(no_wheels,color,price,brand)
		@no_wheels1 = no_wheels
		@color1 = color
		@price1 = price
		@brand1 = brand
	end
end


class Bike < Vehicle
	def displaybike
		@modelofbike = "CD100"
		puts "No. of wheels in #{@modelofbike} are #{@no_wheels1}"
		puts "Color of #{@modelofbike} is #{@color1}"
		puts "Price of #{@modelofbike} is #{@price1}"
		puts "Brand #{@modelofbike} is #{@brand1}"
	end
end

class Car < Vehicle
	def displaycar
		@modelofcar = "Nano"
		puts "No. of wheels in #{@modelofcar} are #{@no_wheels1}"
		puts "Color of #{@modelofcar} is #{@color1}"
		puts "Price of #{@modelofcar} is #{@price1}"
		puts "Brand #{@modelofcar} is #{@brand1}"
	end
end


bikeobj = Bike.new(2,"red","30000","Hero honda")
bikeobj.inmodule("bike")
bikeobj.displaybike
carobj = Car.new(4,"black","200000","Tata")
carobj.inmodule("car")
carobj.displaycar