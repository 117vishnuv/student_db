class Credential < ApplicationRecord
    has_many :qualifications, :dependent => :destroy
    has_many :students, :through => :qualifications

    def self.search(params)
        students = all
        if params[:credential_name].present?
          students = students.where("name like :name", name: "%#{params[:credential_name.first]}%")
        end
    
        if params[:institution_name].present?
          students = students.joins(:institution).where('institutions.name like :institution', institution: "%#{params[:institution_name]}%")
        end
        
        students
      
    
    end

end
