# app/controllers/service_requests_controller.rb
class ServiceRequestsController < ApplicationController
    def create
      # Extract latitude and longitude from request parameters
      latitude = params[:latitude]
      longitude = params[:longitude]
      
      # Additional logic to find nearby mechanics or garages and dispatch the request
      
      render json: { message: "Service request created successfully" }, status: :created
    end
  end
  