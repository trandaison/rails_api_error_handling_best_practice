class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

  protected
  def render_unprocessable_entity_response error, status: :unprocessable_entity
    render json: error.record.errors, status: status
  end
end
