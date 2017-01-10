# Create a class with a name and description; make a method called 'elevator-pitch' that states the name and desc

class Project
  attr_accessor :name, :description
  def initialize(name, description)
    @name = name
    @description = description
  end
  def elevator_pitch
    return {
      "name" => @name,
      "description" => @description
    }
  end
end

project1 = Project.new("The Suckut", "It sucks, as it cuts!")
puts project1.name
puts project1.elevator_pitch
