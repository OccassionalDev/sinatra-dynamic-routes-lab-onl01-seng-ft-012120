require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do
    params[:name].reverse 
  end 
  
  get '/square/:number' do 
    square = (params[:number].to_i * params[:number].to_i).to_s
    square
  end 
  
  get '/say/:number/:phrase' do 
    phrase_string = ""
    
    params[:number].to_i.times do 
      phrase_string += params[:phrase]
    end 
    
    phrase_string
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    ""
  end 
end