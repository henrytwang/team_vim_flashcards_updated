require 'csv'


headers = [:question, :answer]


CSV.foreach(APP_ROOT.join('public', 'aminos.csv')) do |row|
  Card.create(Hash[headers.zip(row)])
end

CSV.foreach(APP_ROOT.join('public', 'world_capitals.csv')) do |row|
  Card.create(Hash[headers.zip(row)])
end
