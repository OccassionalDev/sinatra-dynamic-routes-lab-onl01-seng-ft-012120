require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do
    params[:name].reverse 
  end 
  
  get '/square/:number' do 
    params[:number]*params[:number]
  end 
  
  get '/say/:number/:phrase' do 
    @amt = params[:number].to_i 
    @phrase = params[:phrase]
    
    @amt.times do 
      @phrase
    end 
  end 
end