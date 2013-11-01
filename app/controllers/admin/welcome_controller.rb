class Admin::WelcomeController < Admin::BaseController
  skip_before_filter :verify_admin_user, only: :verify

  def index
  end

  def verify
  end
end
