Rails.application.routes.draw do
  root :to => "institutions#index"
  # Routes for the Proj phase resource:

  # CREATE
  get("/proj_phases/new", { :controller => "proj_phases", :action => "new_form" })
  post("/create_proj_phase", { :controller => "proj_phases", :action => "create_row" })

  # READ
  get("/proj_phases", { :controller => "proj_phases", :action => "index" })
  get("/proj_phases/:id_to_display", { :controller => "proj_phases", :action => "show" })

  # UPDATE
  get("/proj_phases/:prefill_with_id/edit", { :controller => "proj_phases", :action => "edit_form" })
  post("/update_proj_phase/:id_to_modify", { :controller => "proj_phases", :action => "update_row" })

  # DELETE
  get("/delete_proj_phase/:id_to_remove", { :controller => "proj_phases", :action => "destroy_row" })

  #------------------------------

  # Routes for the Project type resource:

  # CREATE
  get("/project_types/new", { :controller => "project_types", :action => "new_form" })
  post("/create_project_type", { :controller => "project_types", :action => "create_row" })

  # READ
  get("/project_types", { :controller => "project_types", :action => "index" })
  get("/project_types/:id_to_display", { :controller => "project_types", :action => "show" })

  # UPDATE
  get("/project_types/:prefill_with_id/edit", { :controller => "project_types", :action => "edit_form" })
  post("/update_project_type/:id_to_modify", { :controller => "project_types", :action => "update_row" })

  # DELETE
  get("/delete_project_type/:id_to_remove", { :controller => "project_types", :action => "destroy_row" })

  #------------------------------

  # Routes for the Engagement resource:

  # CREATE
  get("/engagements/new", { :controller => "engagements", :action => "new_form" })
  post("/create_engagement", { :controller => "engagements", :action => "create_row" })

  # READ
  get("/engagements", { :controller => "engagements", :action => "index" })
  get("/engagements/:id_to_display", { :controller => "engagements", :action => "show" })

  # UPDATE
  get("/engagements/:prefill_with_id/edit", { :controller => "engagements", :action => "edit_form" })
  post("/update_engagement/:id_to_modify", { :controller => "engagements", :action => "update_row" })

  # DELETE
  get("/delete_engagement/:id_to_remove", { :controller => "engagements", :action => "destroy_row" })

  #------------------------------

  # Routes for the Solution resource:

  # CREATE
  get("/solutions/new", { :controller => "solutions", :action => "new_form" })
  post("/create_solution", { :controller => "solutions", :action => "create_row" })

  # READ
  get("/solutions", { :controller => "solutions", :action => "index" })
  get("/solutions/:id_to_display", { :controller => "solutions", :action => "show" })

  # UPDATE
  get("/solutions/:prefill_with_id/edit", { :controller => "solutions", :action => "edit_form" })
  post("/update_solution/:id_to_modify", { :controller => "solutions", :action => "update_row" })

  # DELETE
  get("/delete_solution/:id_to_remove", { :controller => "solutions", :action => "destroy_row" })

  #------------------------------

  # Routes for the Institution resource:

  # CREATE
  get("/institutions/new", { :controller => "institutions", :action => "new_form" })
  post("/create_institution", { :controller => "institutions", :action => "create_row" })

  # READ
  get("/institutions", { :controller => "institutions", :action => "index" })
  get("/institutions/:id_to_display", { :controller => "institutions", :action => "show" })

  # UPDATE
  get("/institutions/:prefill_with_id/edit", { :controller => "institutions", :action => "edit_form" })
  post("/update_institution/:id_to_modify", { :controller => "institutions", :action => "update_row" })

  # DELETE
  get("/delete_institution/:id_to_remove", { :controller => "institutions", :action => "destroy_row" })

  #------------------------------

  devise_for :employees
  # Routes for the Employee resource:

  # READ
  get("/employees", { :controller => "employees", :action => "index" })
  get("/employees/:id_to_display", { :controller => "employees", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
