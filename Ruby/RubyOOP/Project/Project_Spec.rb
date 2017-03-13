require_relative 'Project'

RSpec.describe Project do
    before(:each) do
        @project1 = Project.new('Project 1', 'description 1')
        @project2 = Project.new('Project 2', 'description 2')
    end
    it 'has a getter and setter for name attribute' do
        @project1.name = "Changed Name"
        expect(@project1.name).to eq("Changed Name")
    end

    it 'Has a method elevator_pitch to explain name and description' do
        expect(@project1.elevator_pitch).to eq("This project is named: Project 1 and it is description 1")
        expect(@project2.elevator_pitch).to eq("This project is named: Project 2 and it is description 2")
    end
end
