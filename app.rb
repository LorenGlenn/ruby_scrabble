require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble')

get('/') do
  erb(:index)
end

post('/results') do
  word = params.fetch('word').strip
  @display = "Scrabble score for " + word + " is " + Scrabble.new(word).score.to_s
  erb(:results)
end
