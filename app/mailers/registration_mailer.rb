class RegistrationMailer < ApplicationMailer
    def notify_student(student)
      @student = student
      mail(to: @student.email, subject: 'Notify Student' )
    end

    def reject_student(student)
      @student = student
      mail(to: @student.email, subject: 'Reject Student')
    end 
end
