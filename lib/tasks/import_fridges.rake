require 'csv'    
namespace :import_fridges_csv do
  task :create_fridges => :environment do
    fridges = File.read('/home/csvm/LazyMe/lib/tasks/fridges.csv')
    fridgesCSV = CSV.parse(fridges, :headers => true)
    fridgesCSV.each do |row|
      Refrigerator.create!(row.to_hash)
end
  end
end 
