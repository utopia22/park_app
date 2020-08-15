module SessionsHelper
  def log_out
    forget(current_user)
    session.delete(:user_id)
    @current_user = nil
  end
end
