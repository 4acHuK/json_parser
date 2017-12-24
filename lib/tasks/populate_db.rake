task :populate_db => :environment do
  ParserService.new.create_data
end