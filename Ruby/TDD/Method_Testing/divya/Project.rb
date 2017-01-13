class Project
  attr_accessor :name , :description
  @@team_member = 0


  def initialize name , description
    @name = name
    @description = description
  end

  def elevator_pitch
     "#{@name}, #{@description}"
  end

  def add_to_team
    @@team_member + 1
  end
end
