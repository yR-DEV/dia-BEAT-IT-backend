class Api::V1::DiabetesMetricsController < ApplicationController

    def index 
        @metrics = DiabetesMetric.all 
        render json: @metrics
    end 
end
