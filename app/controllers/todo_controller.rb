class TodoController < ApplicationController
    def index
    
    end
    def show
        # Gets number user typed in URL
        todo_id = params[:id]
        
        #Grab the todo with that id from the database
        todo = Todo.find_by_id(todo_id)
        
        #Set the variable shared with template to the values we got
        #from database
        @todo_description = todo.description
        @todo_pomodoro_estimate = todo.pomodoro_estimate
            
    end
end