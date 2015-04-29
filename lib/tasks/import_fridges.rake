require 'csv'    

fridges = File.read('fridges.csv')
fridgesCSV = CSV.parse(fridges, :headers => true)
fridgesCSV.each do |row|
  Refrigerator.create!(row.to_hash)
end
