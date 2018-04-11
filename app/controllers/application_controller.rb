class ApplicationController < ActionController::Base
  layout "clean_blog"
  protect_from_forgery with: :exception
  include SessionsHelper
end
