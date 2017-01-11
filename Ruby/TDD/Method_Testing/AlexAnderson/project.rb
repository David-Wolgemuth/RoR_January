class Project
  attr_accessor :name, :description
  def initialize name, description
    @name = name
    @description = description
    @no_of_team_members = 0
  end
  def name
    return @name
  end
  def elevator_pitch
     "#{@name},  #{@description}"
  end
  def add_to_team
    @no_of_team_members += 1
  end
  def get_num_of_team_members
    return @no_of_team_members
  end
end
