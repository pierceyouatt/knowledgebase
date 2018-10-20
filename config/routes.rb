Rails.application.routes.draw do
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
