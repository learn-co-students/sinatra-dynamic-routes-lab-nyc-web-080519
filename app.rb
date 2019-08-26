require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get "/square/:number" do
    @num = params[:number]
    @product = params[:number].to_i * params[:number].to_i
    "#{@product}"
  end

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @saying = params[:phrase]
    "#{@saying}" * @num
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    words = []
    params.each do |k, v|
      words << v
    end
    "#{words.join(" ")}."
  end

  get "/:operation/:number1/:number2" do 
    @oper = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @oper == "add"
      "#{@num1 + @num2}"
    elsif @oper == "subtract"
      "#{@num1 - @num2}"
    elsif @oper == "multiply"
      "#{@num1 * @num2}"
    elsif @oper == "divide"
      "#{@num1 / @num2}"
      end
    end

end