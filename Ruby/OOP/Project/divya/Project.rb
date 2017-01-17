class Project
  attr_accessor :name, :description
  def initialize name, description
    @name = name
    @description = description
  end
  def elevator_pitch
    puts "this is the name and descp #{@name}, #{@description}"
  end
end

proj = Project.new('proj1','CD-description')
proj.elevator_pitch
