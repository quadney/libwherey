module Api
  module V1
    class ZonesController < ApplicationController
      before_action :set_zone, only: [:show, :update, :destroy]

      # GET /zones
      # GET /zones.json
      def index
        @zones = Zone.where(region_id: params[:region_id])

        render json: @zones
      end

      # GET /zones/1
      # GET /zones/1.json
      def show
        render json: @zone
      end

      # POST /regions
      # POST /regions.json
      def create
        @zone = Zone.new(zone_params)

        if @zone.save
          render json: @zone, status: :created, location: @zone
        else
          render json: @zone.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /zones/1
      # PATCH/PUT /zones/1.json
      def update
        @zone = Zone.find(params[:id])

        if @zone.update(zone_params)
          head :no_content
        else
          render json: @zone.errors, status: :unprocessable_entity
        end
      end

      # DELETE /zones/1
      # DELETE /zones/1.json
      def destroy
        @zone.destroy

        head :no_content
      end

        # not sure where this should go - controller or model? I think model
      def user_entered_zone
        # find the region
        zone = Zone.find(params[:id])
        # add 1 to the current population
        zone.update(:current_population => zone.current_population + 1)
        zone.save

        render json: zone
      end

      def user_exited_zone
        # find the region
        zone = Zone.find(params[:id])
        # add 1 to the current population
        zone.update(:current_population => zone.current_population - 1)
        zone.save

        render json: zone
      end
        
      private

        def set_zone
          @zone = Zone.find(params[:id])
        end

        def zone_params
          params.require(:zone).permit(:identifier, :region_id, :gps_altitude, :current_population, :max_capacity)
        end
    end
  end
end
