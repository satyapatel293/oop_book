# 1. How do we create an object in Ruby? Give an example of the creation of an object.

=begin
 We can create an  object in Ruby by first defining a class then intstantiating a object from that class using the .new method 
  
=end

module Run 
  def run(int)
    puts "Ran #{int} feet!"
  end 
end 

class Names 
  include Run
end

satya = Names.new 
p satya.class


=begin
 2. What is a module? What is its purpose? How do we use them with our classes? Create a module for the class you created in exercise 1 and include it properly.
  

  Modules are a way of adding polymorphism to classes, they are a collection of behaviors that are usable in other classes via mixins 

  They allow us to create reuseable that can be shared between classes 
  
=end

satya.run(50)