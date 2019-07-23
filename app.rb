require('sinatra')
require('sinatra/reloader')
require('./lib/riddle')
require('pry')
also_reload('lib/**/*.rb')

get ('/') do
  erb(:riddle)
end
get ('/answer') do
if answer
  erb(:sucess)
else
  erb(:fails)
end
end

post ('/riddles') do
  @riddle1 = Riddles.new("What's full of holes but still holds water?", "A sponge.")
  @riddle2 = Riddles.new("Where is the only place that yesterday always comes after today?", "In a dictionary.")
  @riddle3 = Riddles.new("What do you bury when it's alive and dig up when it's dead?", "A plant.")
  @riddle4 = Riddles.new("What can you see in the middle of March and April that you can never see in any other month?", "The letter R.")
end

get ('/show_me_a_riddle') do
  @foo = 'bar'
  erb(:riddle)
end
