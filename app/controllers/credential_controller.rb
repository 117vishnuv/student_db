class CredentialController < ApplicationController

    def index
        @students = Credential.search(params)
    end
   
    def credential_params
        params.require(:student).permit( credential_ids:[],credential_name:[])
    end


end
