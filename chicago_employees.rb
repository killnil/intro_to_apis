require 'http'

response = HTTP.get("https://data.cityofchicago.org/resource/xzkq-xp2w.json")
employees = response.parse

employees.each do |employee|
  name = employee["name"]
  salary = employee["annual_salary"]
  puts "#{name} makes $#{salary}"
end

p employees.count