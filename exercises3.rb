require "time"

module Towable 
  def can_tow?(pounds)
    pounds < 2000
  end  
end 


class Vehicle
  attr_accessor :color
  attr_reader :year, :model

  @@vehicles = 0 

  def self.num_of_vehicles
    puts "This program has created #{@@vehicles} vehicles"
  end 

  def self.gas_milage(gallons, miles) 
    puts "You get #{miles/gallons} miles per gallon!"
  end 

  def initialize(year, color, model)
    @year = year 
    @color = color 
    @model = model
    @current_speed = 0
    @@vehicles += 1 
  end 

  def speed_up(num)
    @current_speed += num 
    puts "You push the gas and accelerate #{num} mph" 
  end 

  def brake(num)
    @current_speed -= num 
    puts "You push the brake and deccelerate #{num} mph" 
  end 

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end 

  def turn_off
    @current_speed = 0
    puts "The vehicle is now in park"
  end 

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end   

  def model_type 
    @model
  end 

  def age
    puts "This Vehicle is #{years_old} years old"
  end 

  private 

  def years_old 
    Time.now.year - self.year 
  end 

end 

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4
  def to_s 
    "My car is a #{color} #{year} #{model}"
  end 
end 


class MyTruck < Vehicle
  NUMBER_OF_DOORS = 2
  include Towable
  def to_s 
    "My truck is a #{color} #{year} #{model}"
  end 
end 


# MyCar.num_of_vehicles
honda = MyCar.new(2001, 'green', 'Accord')
# Vehicle.num_of_vehicles
toyota = MyTruck.new(2008, 'white', 'Tonka')
# MyTruck.num_of_vehicles
# puts honda
# puts toyota

# puts toyota.can_tow?(200)
# puts "--------- Vehicle ancestors --------"
# puts Vehicle.ancestors
# puts "--------- MyCar ancestors --------"
# puts MyCar.ancestors
# puts "--------- MyTruck ancestors --------"
# puts MyTruck.ancestors


# toyota.speed_up(20)
# toyota.brake(5)
# toyota.current_speed

# honda.age




class Student 
  def initialize(n, g)
    @name = n
    @grade = g
  end 

  def better_grade_than?(other_student)
    grade > other_student.grade
  end 

  protected
  attr_reader :grade
end 


bob = Student.new('Bob', 90)
joe = Student.new('Joe', 94)


# joe.grade
puts 'Well done!' if joe.better_grade_than?(bob)