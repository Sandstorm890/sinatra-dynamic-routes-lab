require_relative 'config/environment'
require "pry"
class App < Sinatra::Base
  
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end
  
  get '/square/:number' do
  
    @square = params[:number].to_i*params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @number = params[:number].to_i
    @returned_phrase = ""

    @number.times{@returned_phrase += @phrase}
    @returned_phrase

  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    # binding.pry
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."

  end

  get '/:operation/:number1/:number2' do
    @operator = params[:operation]
    # binding.pry

    if @operator == "add"
      @solution = params[:number1].to_i+params[:number2].to_i
      "#{@solution}"
    elsif @operator == "subtract"
      @solution = params[:number1].to_i-params[:number2].to_i
      "#{@solution}"

    elsif @operator == "multiply"
      @solution = params[:number1].to_i*params[:number2].to_i
      "#{@solution}"

    elsif @operator == "divide"
      @solution = params[:number1].to_i/params[:number2].to_i
      "#{@solution}"
    end
  end

end