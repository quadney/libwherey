module Api
  module V1
  	class BssidsController < ApplicationController
  	  before_action :set_bssid, only: [:show, :update, :destroy]

      # GET /bssids
      # GET /bssids.json
      def index
        @bssids = Bssid.where(zone_id: params[:zone_id])

        render json: @bssids
      end

      # GET /bssids/1
      # GET /bssids/1.json
      def show
        render json: @bssid
      end

      # POST /bssids
      # POST /bssids.json
      def create
        @bssid = Bssid.new(bssid_params)

        if @bssid.save
          render json: @bssid, status: :created, location: @bssid
        else
          render json: @bssid.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /bssids/1
      # PATCH/PUT /bssids/1.json
      def update
        @bssid = Bssid.find(params[:id])

        if @bssid.update(bssid_params)
          head :no_content
        else
          render json: @bssid.errors, status: :unprocessable_entity
        end
      end

      # DELETE /bssids/1
      # DELETE /bssids/1.json
      def destroy
        @bssid.destroy

        head :no_content
      end
        
      private

        def set_bssid
          @bssid = Bssid.find(params[:id])
        end

        def bssid_params
          params.require(:bssid).permit(:identifier, :zone_id)
        end

  	end
  end
end
