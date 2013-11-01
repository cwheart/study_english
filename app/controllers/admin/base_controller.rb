class Admin::BaseController < ApplicationController
  before_filter :authenticate_admin_user!
  before_filter :verify_admin_user

  private
  def verify_admin_user
    redirect_to admin_verify_path and return unless current_admin_user.verified?
  end
end
