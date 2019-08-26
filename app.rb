require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do 
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get '/square/:number' do 
    @product = params[:number].to_i * params[:number].to_i
    "#{@product}"
  end

  get '/say/:number/:phrase' do 
    @sentence = params[:phrase]
    @num = params[:number].to_i
    "#{@sentence}" * @num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    words = []
    params.each do |k, v|
      words << v
    end
    words = words.join(' ')
    "#{words}."
  end

  get '/:operation/:number1/:number2' do 
    @op = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    if @op == "add"
      "#{@num1 + @num2}"
    elsif @op == "subtract"
      "#{@num1 - @num2}"
    elsif @op == "multiply"
      "#{@num1 * @num2}"
    elsif @op == "divide"
      "#{@num1 / @num2}"
    end
  end

end