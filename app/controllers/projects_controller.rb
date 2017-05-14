class ProjectsController < ApplicationController
  before_action :find_project, only: [:show, :edit, :update, :destroy]

  def index
  	@projects = Project.all.order("created_at DESC")
  end

  def show
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
  	@project = Project.find(params[:id])
  end

  def project_params
  	params.require(:project).permit(:title, :link, :description, :cost, :test_type, :tester, :rp, :architect, :department)
  end

end
