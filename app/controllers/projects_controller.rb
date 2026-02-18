class ProjectsController < ApplicationController
  before_action :find_project, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @projects = Project.all.order("created_at DESC")

    # Basic metrics for visualization.
    @projects_by_department = Project.group(:department).count
    @projects_by_test_type = Project.group(:test_type).count
    @cost_by_department = Project.group(:department).average(:cost)
  end

  def show
  end

  def new
  	@project = current_user.projects.build
  end

  def create
  	@project = current_user.projects.build(project_params)

  	if @project.save
  		redirect_to @project
  	else
  		render 'new'
  	end
  end

  def edit
  end

  def update
  	if @project.update(project_params)
  		redirect_to @project
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@project.destroy
  	redirect_to root_path
  end

  private

  def find_project
  	@project = Project.find(params[:id])
  end

  def project_params
  	params.require(:project).permit(:title, :link, :description, :cost, :test_type, :tester, :rp, :architect, :department)
  end

end
