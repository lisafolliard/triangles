require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/triangles')


get('/') do
  erb(:index)
end

get ('/triangles') do
  side1 = params.fetch('side1')
  side2 = params.fetch('side2')
  side3 = params.fetch('side3')
  @triangles = Triangles.new(side1, side2, side3)
  erb(:triangles)
  
end
