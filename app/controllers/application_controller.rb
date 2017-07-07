require './config/environment'
require './app/models/gift_giver'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end
  
  post '/results' do
    # Take the users input:
    # string of potential gift givers separated by a comma
    user_input = params[:people]
    @final_result = sort_and_pair(user_input)
    erb :results
    # pass that single structure to a new view
  end
end
