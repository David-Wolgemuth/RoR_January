require 'rails_helper'

RSpec.describe "Tasks", type: :request do
  feature "GET /tasks" do

    it 'display the tasks' do
      @all_tasks = Task.create :task => 'go to bed'

      visit tasks_path
      page.should have_content 'go to bed'
    end

    it 'creates a new task' do
      visit tasks_path
      fill_in 'Task', :with => 'go to work'
      click_button 'Create Task'

      current_path.expect == tasks_path
      page.shold have_content 'go to work'

      save_and_open_page
    end

  end
end
