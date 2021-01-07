class Credential < ApplicationRecord
    has_many :qualifications, :dependent => :destroy
    has_many :students, :through => :qualifications

    def self.search(params)
    
      students = Student.all
      students1 = Student.all
      if params[:credential_name].present?
        (params[:credential_name][:name] - [""]).each do |par|
          # students  = Student.joins(:credentials).where(credentials: { name: params[:credential_name][:name] - [""] } )
          students  = Student.joins(:credentials).where(credentials: { name: [par] } )
          students1 = students1 & students
        end
      end 
     students1
      
      
    
    end

end
