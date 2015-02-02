json.array!(@games) do |game|
  json.extract! game, :id, :name, :price, :genre
  json.url game_url(game, format: :json)
end
