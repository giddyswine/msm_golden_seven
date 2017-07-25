class PagesController < ApplicationController

    def directors
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
        render("page_templates/directors.html.erb")
    end

    def actors
        @actor_array=Actor.all.ids
        @directors=Actor.all
        @names=[]
        @ids=[]
        @bios=[]
        @dob=[]
        @img=[]
        @actor_array.each do |info|
            name = Actor.find(info).name
            id = Actor.find(info).id
            bio = Actor.find(info).bio
            dob = Actor.find(info).dob
            img = Actor.find(info).image_url
            @names.push(name)
            @ids.push(id)
            @bios.push(bio)
            @dob.push(dob)
            @img.push(img)
            end
        render("page_templates/actors.html.erb")
    end

    def movies
        @movies_array=Movie.all.ids
        @movies=Movie.all
        @title=[]
        @ids=[]
        @year=[]
        @description=[]
        @duration=[]
        @img=[]
        @movies_array.each do |info|
            title = Movie.find(info).title
            id = Movie.find(info).id
            year = Movie.find(info).year
            description = Movie.find(info).description
            duration = Movie.find(info).duration
            img = Movie.find(info).image_url
            @title.push(title)
            @ids.push(id)
            @year.push(year)
            @description.push(description)
            @duration.push(duration)
            @img.push(img)
            end
        render("page_templates/movies.html.erb")
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

