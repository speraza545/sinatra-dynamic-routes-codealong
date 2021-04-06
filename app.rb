require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get '/goodbye/:name' do 
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get '/multiply/:first_int/:second_int' do 
    @first_int = params[:first_int].to_i
    @second_int = params[:second_int].to_i
    "#{@first_int * @second_int}"
  end
end