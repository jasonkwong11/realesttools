class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  after_filter :set_csrf_cookie

  respond_to :json

  def set_csrf_cookie
    cookies['XSRF-TOKEN'] = form_authenticity_token if protect_from_forgery?
  end

  protected

    def verified_request?
      super || valid_authenticity_token?(session, request_headers['X-XSRF-TOKEN'])
    end
end



