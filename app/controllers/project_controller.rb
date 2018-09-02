class ProjectController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.friendly.find(params[:id])
    @tasks = @project.tasks.order(:tag)

  end
end
