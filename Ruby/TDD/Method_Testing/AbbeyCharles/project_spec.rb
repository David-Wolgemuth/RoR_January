require_relative "project"

RSpec.describe Project do
  it "has a getter and setter for name attribute" do
    project = Project.new("Project Name", "I am a project")
    project.title = "Changed Name"
    expect(project.title).to eq("Changed Name")
    project.description = "Changed Project Description"
    expect(project.description).to eq("Changed Project Description")
  end
  it "has a method elevator_pitch to explain name and description" do
    project1 = Project.new("Project 1", "description 1")
    project2 = Project.new("Project 2", "description 2")
    expect(project1.elevator_pitch).to eq("Project 1, description 1")
    expect(project2.elevator_pitch).to eq("Project 2, description 2")
  end
  it "has a method to add a person to the team" do
    project3 = Project.new("Project3", "description 3")
    expect(project3.add_to_team).to eq(1)
  end
end
