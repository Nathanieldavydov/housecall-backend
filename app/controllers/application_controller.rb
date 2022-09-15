class ApplicationController < ActionController::Base
    include ActionController::Cookies


    skip_before_action :verify_authenticity_token
    before_action :authorize

    private

    def authorize
        
    end
end
