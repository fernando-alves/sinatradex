get '/' do
  'fun fun'
end

get '/pokemon' do
  form = '<form action="/pokemon" method="post">
            Name: <input type="text" name="name">
            <br/>
            Type: <input type="text" name="type">
            <br/>
            <input type="submit">
        </form>'

  erb form
end

post '/pokemon' do
  new_pokemon = Pokemon.new(params)
  new_pokemon.save
  redirect to('/pokedex')
end

get '/pokedex' do
  list = Pokemon.all.map do |pokemon|
           "Name: #{pokemon.name} Type: #{pokemon.type}"
         end.join '<br/>'
  erb list
end