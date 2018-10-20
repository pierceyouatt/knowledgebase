class ProjPhasesController < ApplicationController
  def index
    @proj_phases = ProjPhase.all

    render("proj_phase_templates/index.html.erb")
  end

  def show
    @engagement = Engagement.new
    @proj_phase = ProjPhase.find(params.fetch("id_to_display"))

    render("proj_phase_templates/show.html.erb")
  end

  def new_form
    @proj_phase = ProjPhase.new

    render("proj_phase_templates/new_form.html.erb")
  end

  def create_row
    @proj_phase = ProjPhase.new

    @proj_phase.phase_name = params.fetch("phase_name")
    @proj_phase.type_id = params.fetch("type_id")

    if @proj_phase.valid?
      @proj_phase.save

      redirect_back(:fallback_location => "/proj_phases", :notice => "Proj phase created successfully.")
    else
      render("proj_phase_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_project_type
    @proj_phase = ProjPhase.new

    @proj_phase.phase_name = params.fetch("phase_name")
    @proj_phase.type_id = params.fetch("type_id")

    if @proj_phase.valid?
      @proj_phase.save

      redirect_to("/project_types/#{@proj_phase.type_id}", notice: "ProjPhase created successfully.")
    else
      render("proj_phase_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @proj_phase = ProjPhase.find(params.fetch("prefill_with_id"))

    render("proj_phase_templates/edit_form.html.erb")
  end

  def update_row
    @proj_phase = ProjPhase.find(params.fetch("id_to_modify"))

    @proj_phase.phase_name = params.fetch("phase_name")
    @proj_phase.type_id = params.fetch("type_id")

    if @proj_phase.valid?
      @proj_phase.save

      redirect_to("/proj_phases/#{@proj_phase.id}", :notice => "Proj phase updated successfully.")
    else
      render("proj_phase_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_type
    @proj_phase = ProjPhase.find(params.fetch("id_to_remove"))

    @proj_phase.destroy

    redirect_to("/project_types/#{@proj_phase.type_id}", notice: "ProjPhase deleted successfully.")
  end

  def destroy_row
    @proj_phase = ProjPhase.find(params.fetch("id_to_remove"))

    @proj_phase.destroy

    redirect_to("/proj_phases", :notice => "Proj phase deleted successfully.")
  end
end
