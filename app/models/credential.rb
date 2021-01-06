class Credential < ApplicationRecord
    has_many :qualifications, :dependent => :destroy
    has_many :students, :through => :qualifications

    def self.search(params)
    
      students = Student.all
      if params[:credential_name].present?
        students  = Student.joins(:credentials).where(credentials: { name: params[:credential_name][:name] - [""] })
      end
      students.uniq
      
    
    end

end
