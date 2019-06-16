class Api::V1::DiabetesMetricsController < ApplicationController

    
    def index 
        @metrics = DiabetesMetric.all 
        render json: @metrics
    end 

    def show 
        @metric = set_metric()
        puts @metric
        render json: @metric
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
        puts @metric["id"]
        @metric.update(metric_params) 
    end

    def destroy 
        @metric.destroy
    end

    private 

    def set_metric 
        puts params[:id]
        @metric = DiabetesMetric.find_by user_id: params[:id]
    end

    def metric_params 
        params.permit(
            :id, :diabetes_metric, :user_id, :height, :weight, :blood_sugar_target_high, 
            :blood_sugar_target_low, :morning_insulin_to_carb_ratio,
            :night_insulin_to_carb_ratio,
            :lantus_units,
            :a1c_goal, :personal_goal)
    end
end

# t.references :user, foreign_key: true
# t.integer :height
# t.integer :weight
# t.integer :blood_sugar_target_low
# t.integer :blood_sugar_target_high
# t.integer :morning_insulin_to_carb_ratio
# t.integer :night_insulin_to_carb_ratio
# t.integer :lantus_units
# t.float :a1c_goal
# t.text :personal_goal