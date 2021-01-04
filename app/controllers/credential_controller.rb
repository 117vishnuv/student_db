class CredentialController < ApplicationController

    def index
        @students = Student.search(params)
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def credential_params
        params.require(:student).permit( credential_ids:[])
    end


end
