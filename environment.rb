require 'pry'

require "./Building.rb"

house = Building.new "Kyle's House", "123 Denver Ave", 5, 240
apartment = Building.new "Ben's Apartment", "321 Boulder Blvd", 3, 150
old_folks_home = Building.new "Sunny Side", "456 Bright Ln", 2, 250

binding.pry