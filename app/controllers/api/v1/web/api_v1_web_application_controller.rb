module Api
    module V1
        module Web
            class ApiV1WebApplicationController < ActionController::Base
                #http_basic_authenticable_with name:"name", password: "hola", if: Proc.new{Rails.env.production?}
            
            end
        end
    end
end