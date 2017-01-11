# Create a class with a name and description; make a method called 'elevator-pitch' that states the name and desc

class Project
  attr_accessor :title, :description, :team

  def initialize(title, description)
    @title = title
    @description = description
    @team = 0
  end
  def elevator_pitch
    return "#{title}, #{description}"
  end
  def add_to_team
    @team += 1
  end
end

project1 = Project.new("The Suckut", "It sucks, as it cuts!")
puts project1.title
puts project1.elevator_pitch
puts project1.team
