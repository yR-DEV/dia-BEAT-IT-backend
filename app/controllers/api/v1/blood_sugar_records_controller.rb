class Api::V1::BloodSugarRecordsController < ApplicationController

    def index 
        @records = BloodSugarRecord.all 
        render json: @records
    end 

    def create 
        @record = BloodSugarRecord.create(record_params)
    end 

    def destroy 
        @record.destroy
    end

    private 

    def record_params 
        params.permit(:user_id, :blood_sugar, :record_time, :record_date, :carbs, :insulin_units)
    end

end

