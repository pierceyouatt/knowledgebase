class ProjectTypesController < ApplicationController
  def index
    @project_types = ProjectType.all

    render("project_type_templates/index.html.erb")
  end

  def show
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
