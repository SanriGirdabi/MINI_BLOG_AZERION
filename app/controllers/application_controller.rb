class ApplicationController < ActionController::Base
  def check_current_user(user_variable)
    current_user == user_variable
  end
end
