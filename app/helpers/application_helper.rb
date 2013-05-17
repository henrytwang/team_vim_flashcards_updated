def current_user
  @user ||= User.find_by_id(session[:user_id])
end

def current_round
  @round ||= Round.find_by_id(session[:round_id])
end
