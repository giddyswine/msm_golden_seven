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

    def directorid
        @id=params["some_id"]
        render("page_templates/directorid.html.erb")
    end
    def actorid
        @id=params["some_id"]
        render("page_templates/actorid.html.erb")
    end
    def movieid
        @id=params["some_id"]
        render("page_templates/movieid.html.erb")
    end

    def edit_director
        @id=params["some_id"]
        @name=Director.find(@id).name
        @image=Director.find(@id).image_url
        @bio=Director.find(@id).bio
        @dob=Director.find(@id).dob
        render("page_templates/edit_director.html.erb")
    end
    def edit_actor
        @id=params["some_id"]
        @name=Actor.find(@id).name
        @image=Actor.find(@id).image_url
        @bio=Actor.find(@id).bio
        @dob=Actor.find(@id).dob
        render("page_templates/edit_actor.html.erb")
    end
    def edit_movie
        @id=params["some_id"]
        @title=Movie.find(@id).title
        @image=Movie.find(@id).image_url
        @description=Movie.find(@id).description
        @duration=Movie.find(@id).duration
        render("page_templates/edit_movie.html.erb")
    end

    def new_form
        render("page_templates/new_form.html.erb")
    end

    def create_row
        render("page_templates/create_row.html.erb")
    end

    def update_actor
        update_actor=Actor.find(params["some_id"])
        update_actor.image_url=params["img"]
        update_actor.name=params["name"]
        update_actor.dob=params["dob"]
        update_actor.save
        @id = params["some_id"]
        @img = Actor.find(@id).image_url
        @dob = Actor.find(@id).dob
        @name = Actor.find(@id).name
        
       redirect_to "/actors/#{@id}"
    end
    def update_director
        update_director=Director.find(params["some_id"])
        update_director.image_url=params["img"]
        update_director.name=params["name"]
        update_director.dob=params["dob"]
        update_director.save
        @id = params["some_id"]
        @img = Director.find(@id).image_url
        @dob = Director.find(@id).dob
        @name = Director.find(@id).name
        
       redirect_to "/directors/#{@id}"
    end
    def update_movie
        update_movie=Movie.find(params["some_id"])
        update_movie.image_url=params["img"]
        update_movie.title=params["title"]
        update_movie.year=params["year"]
        update_movie.description=params["description"]
        update_movie.duration=params["duration"]
        update_movie.save
        @id = params["some_id"]
        @img = Movie.find(@id).image_url
        @title = Movie.find(@id).title
        @duration = Movie.find(@id).duration
        @description = Movie.find(@id).description
        
       redirect_to "/movies/#{@id}"
    end

    def destroy_row
        render("page_templates/toast.html.erb")
    end




end

