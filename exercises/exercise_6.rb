require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(
  first_name: "Khurram",
  last_name: "Virani",
  hourly_rate: 60
)
@store1.employees.create(
  first_name: "Dan",
  last_name: "Abramov",
  hourly_rate: 100
)
@store1.employees.create(
  first_name: "Guido",
  last_name: "von Rossum",
  hourly_rate: 60
)
@store1.employees.create(
  first_name: "Brendan",
  last_name: "Eich",
  hourly_rate: 60
)
@store2.employees.create(
  first_name: "Eleanor",
  last_name: "Manskrill",
  hourly_rate: 60
)
@store2.employees.create(
  first_name: "Felicia",
  last_name: "Featherbottom",
  hourly_rate: 60
)
@store2.employees.create(
  first_name: "Gertrude",
  last_name: "Manskrill",
  hourly_rate: 60
)
@store2.employees.create(
  first_name: "Betty",
  last_name: "Porridge",
  hourly_rate: 100
)
@store2.employees.create(
  first_name: "Mack",
  last_name: "Power",
  hourly_rate: 60
)

