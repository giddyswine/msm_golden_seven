class PagesController < ApplicationController

    def index
        render("page_templates/index.html.erb")
    end
   
    def new_form
        render("page_templates/new_form.html.erb")
    end

    def create_row
        render("page_templates/create_row.html.erb")
    end

    def show
        render("page_templates/show.html.erb")
    end

    def edit_form
        render("page_templates/edit_form.html.erb")
    end

    def update_row
        render("page_templates/update_form.html.erb")
    end

    def destroy_row
        render("page_templates/toast.html.erb")
    end




end

