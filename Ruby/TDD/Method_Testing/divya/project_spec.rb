require_relative 'Project'
RSpec.describe Project do
  it 'has a method elevator_pitch to explain name and description' do
    project1 = Project.new('Project1', 'description 1')
    project2 = Project.new('Project2', 'description 2')

    expect(project1.elevator_pitch).to eq("Project1, description 1")
    expect(project2.elevator_pitch).to eq("Project2, description 2")
    expect(project1.add_to_team).to eq(1)
    expect(project2.add_to_team).to eq(1)
  end
end
