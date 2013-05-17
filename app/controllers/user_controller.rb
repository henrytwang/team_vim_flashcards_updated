get '/sign_up' do
  erb :sign_up
end

get '/sign_in' do
  erb :signin
end 

get '/user_page' do
  erb :user
end

post '/sign_in' do
  if User.authenticate(params[:email], params[:password])
    @user = User.find_all_by_email(params[:email])
    session[:user_id] = @user.id
  else
    redirect to '/sign_in'
  end
  erb :user
end

post '/sign_up' do
  @user = User.create(:full_name => params[:full_name],
                      :email => params[:email],
                      :password => params[:password])
  erb :user
end

delete '/logout' do
  session[:user_id] = nil
  redirect to '/'
end
