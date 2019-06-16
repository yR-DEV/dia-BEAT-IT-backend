class Api::V1::DiabetesMetricsController < ApplicationController

    
    def index 
        @metrics = DiabetesMetric.all 
        render json: @metrics
    end 

    def show 
        set_metric()
    end

    def create 
        @metric = DiabetesMetric.new(metric_params)

        if @metric.save 
            render json: @metric, status: :created, location: @metric
        else 
            render json: @metric.errors, status: :unprocessable_entity
        end
    end

    def update 
        @metric = set_metric()
        puts 'puts set it! ````````````````'
        # puts @metric.update(metric_params) 
        puts '---------------------------------------------------'
        # @metric.update(metric_params)
        if @metric.update!(metric_params) 
            render json: @metric
        else     
            render json: @metric.errors, status: :unprocessable_entity
        end 
    end

    def destroy 
        @metric.destroy
    end

    private 

    def set_metric 
        @metric = DiabetesMetric.find_by user_id: params[:id]
    end

    def metric_params 
        params.permit(
            :id, :user_id, :height, :weight, :blood_sugar_target_high, 
            :blood_sugar_target_low, :morning_insulin_to_carb_ratio,
            :night_insulin_to_carb_ratio,
            :lantus_units,
            :a1c_goal, :personal_goal)
    end
end
