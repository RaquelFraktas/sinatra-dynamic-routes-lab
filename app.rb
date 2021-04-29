require_relative 'config/environment'
require'pry'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    name_reversed = params[:name].reverse
    "#{name_reversed}"
  end

   get '/square/:number' do 
    num = params[:number].to_i
    "#{num**2}"
   end

   get '/say/:number/:phrase' do
    num = params[:number].to_i
    saying = params[:phrase]
    string = ""

    iteration = num.times do
      string += saying
    end

    "#{string}"
   end


  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    case params[:operation]
    when 'add'
      answer = (num1 + num2).to_s
    when 'subtract'
      answer = (num1 - num2).to_s
    when 'multiply'
      answer = (num1 * num2).to_s
    when 'divide'
      answer = (num1 / num2).to_s
    end

  end

end