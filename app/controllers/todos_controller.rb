class TodosController < ApplicationController
    protect_from_forgery with: :null_session
    def create
        @todo = Todos.new
        @todo.title = params["text"]
        puts @todo.title
        if @todo.save!
            puts "added"
        end
        render plain: @todo.to_json
    end
end