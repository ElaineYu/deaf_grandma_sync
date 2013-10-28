get '/' do
  # Look in app/views/index.erb
  # @grandma = params[:grandma]
  @grandma = params[:grandma]

  erb :index
end

post '/grandma' do
	input = params["user_input"]
	if input == ""
		redirect to ('/?grandma=SAY SOMETHING!')
	elsif input == input.upcase
		redirect to('/?grandma=I hear ya. That\'s nice')
	else
		redirect to('/?grandma=SPEAK UP!')
	end
end