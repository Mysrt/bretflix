class ApplicationController < ActionController::Base
  before_filter :authenticate_user!
  protect_from_forgery

  private

  def after_sign_out_path_for(resource_or_scope)
    scope = Devise::Mapping.find_scope!(resource_or_scope)
    send(:"new_#{scope}_session_path")
  end
end
