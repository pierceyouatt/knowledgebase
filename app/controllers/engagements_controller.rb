class EngagementsController < ApplicationController
  def index
    @engagements = Engagement.all

    render("engagement_templates/index.html.erb")
  end

  def show
    @engagement = Engagement.find(params.fetch("id_to_display"))

    render("engagement_templates/show.html.erb")
  end

  def new_form
    @engagement = Engagement.new

    render("engagement_templates/new_form.html.erb")
  end

  def create_row
    @engagement = Engagement.new

    @engagement.empl_id = params.fetch("empl_id")
    @engagement.inst_id = params.fetch("inst_id")
    @engagement.sol_id = params.fetch("sol_id")
    @engagement.eng_name = params.fetch("eng_name")
    @engagement.eng_number = params.fetch("eng_number")
    @engagement.sp_link = params.fetch("sp_link")
    @engagement.eng_summary = params.fetch("eng_summary")
    @engagement.type_id = params.fetch("type_id")
    @engagement.phase_id = params.fetch("phase_id")

    if @engagement.valid?
      @engagement.save

      redirect_back(:fallback_location => "/engagements", :notice => "Engagement created successfully.")
    else
      render("engagement_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @engagement = Engagement.find(params.fetch("prefill_with_id"))

    render("engagement_templates/edit_form.html.erb")
  end

  def update_row
    @engagement = Engagement.find(params.fetch("id_to_modify"))

    @engagement.empl_id = params.fetch("empl_id")
    @engagement.inst_id = params.fetch("inst_id")
    @engagement.sol_id = params.fetch("sol_id")
    @engagement.eng_name = params.fetch("eng_name")
    @engagement.eng_number = params.fetch("eng_number")
    @engagement.sp_link = params.fetch("sp_link")
    @engagement.eng_summary = params.fetch("eng_summary")
    @engagement.type_id = params.fetch("type_id")
    @engagement.phase_id = params.fetch("phase_id")

    if @engagement.valid?
      @engagement.save

      redirect_to("/engagements/#{@engagement.id}", :notice => "Engagement updated successfully.")
    else
      render("engagement_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @engagement = Engagement.find(params.fetch("id_to_remove"))

    @engagement.destroy

    redirect_to("/engagements", :notice => "Engagement deleted successfully.")
  end
end
