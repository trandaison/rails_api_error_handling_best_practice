class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  rescue_from ActiveRecord::RecordNotFound, with: :render_404

  protected
  def render_unprocessable_entity_response error, status: :unprocessable_entity
    render json: Errors::ActiveRecordValidation.new(error.record), status: status
  end

  def render_404 error, status: :not_found
    render json: Errors::ActiveRecordNotFound.new(error), status: status
  end
end
