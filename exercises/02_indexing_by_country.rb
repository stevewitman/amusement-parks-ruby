require 'yaml'
require 'pp'
raw_data = File.read('../data/amusement_parks.yml')
hash = YAML.load(raw_data)

def convert_to_country_hash(hashes)
  result = {}
  hashes.each do |hash|
    result[hash[:country]] ||= []
    result[hash[:country]] << hash
  end
  result
end

pp convert_to_country_hash(hash)

# ------ code above this line ------

# require 'rspec/autorun'
#
# RSpec.describe 'convert_to_country_hash' do
#   it 'returns id indexed hash when given an array of hashes' do
#     input = [
#       {
#         :id=>546,
#         :name=>"Kalahari Resorts",
#         :city=>"Wisconsin Dells",
#         :state=>"Wisconsin",
#         :country=>"United States"
#       },
#       {
#         :id=>547,
#         :name=>"Little Amerricka",
#         :city=>"Marshall",
#         :state=>"Wisconsin",
#         :country=>"United States"
#       },
#       {
#         :id=>2,
#         :name=>"Calaway Park",
#         :city=>"Calgary",
#         :state=>"Alberta",
#         :country=>"Canada"
#       }
#     ]
#
#     output = {
#       "Canada" => [
#         {
#           :id=>2,
#           :name=>"Calaway Park",
#           :city=>"Calgary",
#           :state=>"Alberta",
#           :country=>"Canada"
#         }
#       ],
#       "United States" => [
#         {
#           :id=>546,
#           :name=>"Kalahari Resorts",
#           :city=>"Wisconsin Dells",
#           :state=>"Wisconsin",
#           :country=>"United States"
#         },
#         {
#           :id=>547,
#           :name=>"Little Amerricka",
#           :city=>"Marshall",
#           :state=>"Wisconsin",
#           :country=>"United States"
#         }
#       ]
#     }
#
#     expect(convert_to_country_hash(input)).to eq(output)
#   end
# end
