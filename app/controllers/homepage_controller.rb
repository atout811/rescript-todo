class HomepageController < ApplicationController
    def index
        @todos=Todos.all
    end
end
