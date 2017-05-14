class ProjectsController < ApplicationController
  def index
  end

  def show
  	@project = Project.find(params[:id])
  end

  def new
  	@project = Project.new
  end

  def create
  	@project = Project.new(project_params)

  	if @project.save
  		redirect_to @project
  	else
  		render 'new'
  	end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def find_project
  end

  def project_params
  	params.require(:project).permit(:title, :link, :description, :cost, :test_type, :tester, :rp, :architect, :department)
  end

end
