class ChatController < ApplicationController
    before_action :authenticate_user! # Assuming users need to be authenticated to access chat
  
    # Create a new message
    def create
      @message = current_user.messages.build(message_params)
      
      if @message.save
        render json: @message, status: :created
      else
        render json: { errors: @message.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    # Retrieve messages for a specific service request
    def index
      @service_request = ServiceRequest.find(params[:service_request_id])
      @messages = @service_request.messages.order(created_at: :asc)
      render json: @messages
    end
    
    private
    
    # Strong parameters for message creation
    def message_params
      params.require(:message).permit(:content, :service_request_id)
    end
  end
  