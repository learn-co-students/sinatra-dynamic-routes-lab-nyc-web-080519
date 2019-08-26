require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name].reverse
    "#{@name}"
  end

  get "/square/:number" do 
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end 


get "/say/:number/:phrase" do
  repeat_string = ""

  params[:number].to_i.times do
    repeat_string += params[:phrase]
  end

  repeat_string
end

get "/say/:word1/:word2/:word3/:word4/:word5" do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
end

get "/:operation/:number1/:number2" do
  first_number = params[:number1].to_i
  second_number = params[:number2].to_i

  empty_string = ""

  if params[:operation] == 'add'
    answer = (first_number + second_number).to_s
  elsif params[:operation] == 'subtract'
    answer = (first_number - second_number).to_s
  elsif params[:operation] == 'multiply'
    answer = (first_number * second_number).to_s
  else params[:operation] == 'divide'
    answer = (first_number / second_number).to_s
  end
end


end 



