class TaskController < ApplicationController
  def show
    project = Project.friendly.find(params[:project_id])
    @tasks = project.tasks
    @task = @tasks.find(params[:id])
  end
end
