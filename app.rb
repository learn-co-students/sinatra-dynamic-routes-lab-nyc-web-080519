require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @reversed = params[:name].reverse
    "#{@reversed}"
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end


  get '/say/:number/:phrase' do
    answer = ''

    params[:number].to_i.times do
      answer += params[:phrase]
    end
    answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    words = []
    to_return = ""
    params.each { |k,v| words << v }
    words.each { |word| to_return+=" #{word}"}
    to_return+="."
  end

  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @operation == "add"
      return (@num1+@num2).to_s
    elsif @operation == "subtract"
      return (@num1-@num2).to_s
    elsif @operation == "multiply"
      return (@num1*@num2).to_s
    elsif @operation == "divide"
      return (@num1/@num2).to_s
    end
  end
end