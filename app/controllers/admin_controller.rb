class AdminController < ApplicationController
    before_action :set_student, only: [:approve] 

    def home
        @students = Student.search(params)
    end
    def list
        @students = Student.all
    end
    def approve
        respond_to do |format|
          @student.update(student_params)
          # format.html { redirect_to @student, notice: 'Student was successfully updated.' }
          format.html { redirect_back(fallback_location: root_path ,notice: 'Student was successfully Approved.') }#changed to stay in same page after approving
          format.json { render :show, status: :ok, location: @student }
        end
    end
    
    private
    
    def set_student
        @student = Student.find(params[:id])
    end
  
    def student_params
        params.require(:student).permit(:full_name, :address, :mobile, :institution_id,:country_id,:approved, credential_ids:[])
    end
    
end
