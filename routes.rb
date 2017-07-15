get '/hello' do
  'Hello world!'
end

get '/users' do
  @users = User.all
  names = []
  @users.each do |user|
    names << user.salutation
  end
  "Here are all the users: #{names.join(' ')}"
end

get '/users/:id' do
  binding.pry
end

get '/users/:id' do
  id = params[:id].to_i
  @user = User.find(id)
  "Hello, #{@user.salutation}"
end

