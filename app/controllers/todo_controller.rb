class TodoController < ApplicationController
    def index
        @todos = Todo.all
    end
    def show
        # Gets number user typed in URL
        todo_id = params[:id]
        
        #Grab the todo with that id from the database
        @todo = Todo.find_by_id(todo_id)
    end
    def new
        #
    end
    def create
        t = Todo.new
        t.description = params['description']
        t.pomodoro_estimate = params['pomodoro_estimate']
        t.save
        redirect_to "/show/#{t.id}"
    end 
    def destroy
        t = Todo.find_by_id(params[:id])
        t.destroy
        redirect_to "/"
    end
    def edit
        @todo = Todo.find_by_id(params[:id])
    end
    def update
        t = Todo.find_by_id(params['id'])
        t.description = params['description']
        t.pomodoro_estimate = params['pomodoro-estimate']
        t.save
        redirect_to "/show/#{t.id}"
    end

    
    
end