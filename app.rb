require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :index
  end
  
  get '/new' do
    erb :create_puppy
  end 
  
  post '/puppy' do
    @pup = Puppy.new(params[:name, :age, :breed])
    erb :display_puppy
  end 
    
  
  
  

end
