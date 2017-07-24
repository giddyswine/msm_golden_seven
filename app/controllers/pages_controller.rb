class PagesController < ApplicationController

    def index
        @director_array=Director.all.ids
        @directors=Director.all
        @names=[]
        @ids=[]
        @bios=[]
        @dob=[]
        @img=[]
        @director_array.each do |info|
            name = Director.find(info).name
            id = Director.find(info).id
            bio = Director.find(info).bio
            dob = Director.find(info).dob
            img = Director.find(info).image_url
            @names.push(name)
            @ids.push(id)
            @bios.push(bio)
            @dob.push(dob)
            @img.push(img)
            end
        
        
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

