class AdminController < ApplicationController
    def home
        @students = Student.search(params)
    end
    def approve 
        @students = Student.all
    end
end
