require_relative 'config/environment'

class App < Sinatra::Base

  

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end # ends get '/reversename/:name' method
  
  get '/square/:number' do
    @number = params[:number]
    ans = @number.to_i * @number.to_i
    ans.to_s
  end  # ends get '/square/:number' method

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    output = ""
    @number.to_i.times {output << @phrase}
    output
  end  # Ends get '/say/:number/:phrase' method

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    "#{word1} #{word2} #{word3} #{word4} #{word5}."
  end  # Ends get '/say/:word1/:word2/:word3/:word4/:word5' method

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    case params[:operation]
    when "add"
      output = num1 + num2
      "#{output}"
    when "subtract"
      output = num1 - num2
      "#{output}"
    when "multiply"
      output = num1 * num2
      "#{output}"
    when "divide"
      output = num1 / num2
      "#{output}"
    end  # Ends case
  end  # ends get '/:operation/:number1/:number2' method

end