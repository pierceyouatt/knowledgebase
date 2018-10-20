class ProjectTypesController < ApplicationController
  def index
    @q = ProjectType.ransack(params[:q])
    @project_types = @q.result(:distinct => true).includes(:sol, :proj_phases, :engagements).page(params[:page]).per(10)

    render("project_type_templates/index.html.erb")
  end

  def show
    @engagement = Engagement.new
    @proj_phase = ProjPhase.new
    @project_type = ProjectType.find(params.fetch("id_to_display"))

    render("project_type_templates/show.html.erb")
  end

  def new_form
    @project_type = ProjectType.new

    render("project_type_templates/new_form.html.erb")
  end

  def create_row
    @project_type = ProjectType.new

    @project_type.type_name = params.fetch("type_name")
    @project_type.sol_id = params.fetch("sol_id")

    if @project_type.valid?
      @project_type.save

      redirect_back(:fallback_location => "/project_types", :notice => "Project type created successfully.")
    else
      render("project_type_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_solution
    @project_type = ProjectType.new

    @project_type.type_name = params.fetch("type_name")
    @project_type.sol_id = params.fetch("sol_id")

    if @project_type.valid?
      @project_type.save

      redirect_to("/solutions/#{@project_type.sol_id}", notice: "ProjectType created successfully.")
    else
      render("project_type_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @project_type = ProjectType.find(params.fetch("prefill_with_id"))

    render("project_type_templates/edit_form.html.erb")
  end

  def update_row
    @project_type = ProjectType.find(params.fetch("id_to_modify"))

    @project_type.type_name = params.fetch("type_name")
    @project_type.sol_id = params.fetch("sol_id")

    if @project_type.valid?
      @project_type.save

      redirect_to("/project_types/#{@project_type.id}", :notice => "Project type updated successfully.")
    else
      render("project_type_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_sol
    @project_type = ProjectType.find(params.fetch("id_to_remove"))

    @project_type.destroy

    redirect_to("/solutions/#{@project_type.sol_id}", notice: "ProjectType deleted successfully.")
  end

  def destroy_row
    @project_type = ProjectType.find(params.fetch("id_to_remove"))

    @project_type.destroy

    redirect_to("/project_types", :notice => "Project type deleted successfully.")
  end
end
