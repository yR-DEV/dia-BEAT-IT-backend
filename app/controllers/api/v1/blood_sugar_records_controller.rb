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


  
#     # GET /items/1
#     def show
#       render json: @item
#     end
  
#     # POST /items
#     def create
#       @item = Item.new(item_params)
  
#       if @item.save
#         render json: @item, status: :created, location: @item
#       else
#         render json: @item.errors, status: :unprocessable_entity
#       end
#     end
  
#     # PATCH/PUT /items/1
#     def update
#       if @item.update(item_params)
#         render json: @item
#       else
#         render json: @item.errors, status: :unprocessable_entity
#       end
#     end
  
#     # DELETE /items/1
#     def destroy
#       @item.destroy
#     end
  
#     private
#       # Use callbacks to share common setup or constraints between actions.
#       def set_item
#         @item = Item.find(params[:id])
#       end
  
#       # Only allow a trusted parameter "white list" through.
#       def item_params
#         params.require(:item).permit(:name, :description)
#       end
#   end
  