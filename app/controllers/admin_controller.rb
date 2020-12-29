class AdminController < ApplicationController
    def home
    end
    def approve 
        @students = Student.all
    end
end
