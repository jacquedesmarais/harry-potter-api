json.array! @characters.each do |character|
  json.id character.id
  json.first_name character.first_name
  json.last_name character.last_name
  json.house character.house
  json.houseVisible false
end