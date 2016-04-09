json.array!(@characters) do |character|
  json.extract! character, :id, :name, :player_name, :race, :class_name, :alignment, :background, :experience
  json.url character_url(character, format: :json)
end
