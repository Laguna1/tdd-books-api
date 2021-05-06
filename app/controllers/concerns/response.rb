# frozen_string_literal: true

module Response
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end

# app/controllers/concerns/exception_handler.rb
module ExceptionHandler
  extend ActiveSupport::Concern
  included do
    rescue_from ActiveRecord::RecordNotFound do |e|
      json_response({ error: e.message }, :not_found)
    end
    rescue_from ActiveRecord::RecordInvalid do |e|
      json_response({ error: e.message }, :unprocessable_entity)
    end
    rescue_from ActiveRecord::RecordNotDestroyed do |e|
      json_response({ errors: e.record.errors }, :unprocessable_entity)
    end
  end
end
