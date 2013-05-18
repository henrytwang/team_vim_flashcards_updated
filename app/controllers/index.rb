get '/' do
  # Look in app/views/index.erb
  if current_user
    redirect to '/user_page'
  end
  erb :index
end


