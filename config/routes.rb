Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config

    get("/", { :controller => "pages", :action => "index" })
  
    # CREATE
    get("/directors/new_form", { :controller => "pages", :action => "new_form" })
    get("/create_director", { :controller => "pages", :action => "create_row" })
    
    # READ
    get("/directors", { :controller => "pages", :action => "directors" })
    get("/directors/:some_id", { :controller => "pages", :action => "directorid" })
    get("/actors", { :controller => "pages", :action => "actors" })
    get("/actors/:some_id", { :controller => "pages", :action => "actorid" })
    get("/movies", { :controller => "pages", :action => "movies" })
    get("/movies/:some_id", { :controller => "pages", :action => "movieid" })
    
    # UPDATE
    get("/directors/:some_id/edit", { :controller => "pages", :action => "edit_form" })
    get("/update_directors/:some_id", { :controller => "pages", :action => "update_row" })
    
    # DELETE
    get("/delete_director/:toast_id", { :controller => "pages", :action => "destroy_row" })


  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end
