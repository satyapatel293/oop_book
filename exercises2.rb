class MyCar 
  attr_accessor :color
  attr_reader :year
  attr_reader :model

  def self.gas_milage(gallons, miles) 
    puts "You get #{miles/gallons} miles per gallon!"
  end 

  def initialize(year, color, model)
    @year = year 
    @color = color 
    @model = model
    @current_speed = 0
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
    puts "The car is now in park"
  end 

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end   

  def model_type 
    @model
  end 

  def to_s 
    "This is my #{year} #{color} #{model}"
  end 

  puts self  #==> will return MyCar (the class) 
end 

honda = MyCar.new(2001, 'green', 'Accord')
# puts honda.speed_up(60)
# puts honda.speed_up(10)
# puts honda.current_speed
# puts honda.brake(30)
# puts honda.turn_off

# honda.color = 'red'
# puts honda.color
# puts honda.year

# honda.spray_paint('blue')
# puts honda.color

# puts honda.model_type

# MyCar.gas_milage(14, 350)
# puts honda



class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"
