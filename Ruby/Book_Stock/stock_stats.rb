require_relative 'csv_reader'

reader = CSVReader.new

ARGV.each do |csv_file_name|
	reader.csv_data_reader(csv_file_name)
end

puts "Total value = #{reader.total_value_in_stock}"