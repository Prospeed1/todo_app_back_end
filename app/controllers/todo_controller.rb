class TodoController < ApplicationController
    def index
    
    end
    def show
        todo_id = params[:id]
            if todo_id == "1"
                @description = "Do H/W"
                @pomodoro_estimate = 1
            elsif todo_id == "2"
                @description = "Run track :)"
                @pomodoro_estimate = 5
            elsif todo_id == "3"
                @description = "Play chess"
                @pomodoro_estimate = 4
            elsif todo_id == "4"
                @description = "Read book"
                @pomodoro_estimate = 3
            elsif todo_id == "5"
                @description = "Use Notepad"
                @pomodoro_estimate = 1
            elsif todo_id == "6"
                @description = "Watch anime"
                @pomodoro_estimate = 4
            else
                @description = "Find a Hobby :P"
                @pomodoro_estimate = 999
                                                
                
            end
    end
end