class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception //// This has been commented out because of an error the website was outputting. (ActionController::InvalidAuthenticityToken)

  #protect_from_forgery prepend: true
  protect_from_forgery unless: -> { request.format.json? }

  # URL Redirect
  APP_DOMAIN = 'www.amilet.com'
  # before_filter :ensure_domain
  before_action :ensure_domain

  def ensure_domain
    unless request.env['HTTP_HOST'] == APP_DOMAIN || Rails.env.development?
      redirect_to "https://#{APP_DOMAIN}", :status => 301
    end
  end

  # Force SSL
  # before_filter :force_ssl

  # def force_ssl
  #   if Rails.env.production?
  #     redirect_to :protocol => 'https' unless request.ssl?
  #   end
  # end
end
