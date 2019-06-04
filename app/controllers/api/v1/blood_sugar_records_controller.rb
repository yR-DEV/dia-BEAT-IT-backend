class Api::V1::BloodSugarRecordsController < ApplicationController

    def index 
        @records = BloodSugarRecord.all 
        render json: @records
    end 
end
