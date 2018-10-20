class InstitutionsController < ApplicationController
  def index
    @institutions = Institution.all

    render("institution_templates/index.html.erb")
  end

  def show
    @engagement = Engagement.new
    @institution = Institution.find(params.fetch("id_to_display"))

    render("institution_templates/show.html.erb")
  end

  def new_form
    @institution = Institution.new

    render("institution_templates/new_form.html.erb")
  end

  def create_row
    @institution = Institution.new

    @institution.inst_name = params.fetch("inst_name")

    if @institution.valid?
      @institution.save

      redirect_back(:fallback_location => "/institutions", :notice => "Institution created successfully.")
    else
      render("institution_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @institution = Institution.find(params.fetch("prefill_with_id"))

    render("institution_templates/edit_form.html.erb")
  end

  def update_row
    @institution = Institution.find(params.fetch("id_to_modify"))

    @institution.inst_name = params.fetch("inst_name")

    if @institution.valid?
      @institution.save

      redirect_to("/institutions/#{@institution.id}", :notice => "Institution updated successfully.")
    else
      render("institution_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @institution = Institution.find(params.fetch("id_to_remove"))

    @institution.destroy

    redirect_to("/institutions", :notice => "Institution deleted successfully.")
  end
end
