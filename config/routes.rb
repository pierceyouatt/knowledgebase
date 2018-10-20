Rails.application.routes.draw do
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
