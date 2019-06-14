class Api::V1::BloodSugarRecordsController < ApplicationController

    def index 
        @records = BloodSugarRecord.all 
        render json: @records
    end 

    def create 
        @record = BloodSugarRecord.create(record_params)

        # if @record.save 
        #     render json: @record, status: :created, location: @record
        # else  
        #     render json: @record.errors, status: :unprocessable_entity
        # end
    end 

    private 

    def record_params 
        params.permit(:user_id, :blood_sugar, :record_time, :record_date, :carbs, :insulin_units)
    end
end

