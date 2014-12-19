require 'yaml'
require 'pp'
raw_data = File.read('../data/amusement_parks.yml')
hash = YAML.load(raw_data)

def convert_to_state_country_hash(hashes)
  result = {}
  hashes.each do |hash|
    key =  hash[:state].to_s + ', ' + hash[:country].to_s
    result[key] ||= []
    result[key] << hash
  end
  result
end

pp convert_to_state_country_hash(hash)

# ------ code above this line ------
#
# require 'rspec/autorun'
#
# RSpec.describe 'convert_to_state_country_hash' do
#   it 'returns id indexed hash when given an array of hashes' do
#     input = [
#       {
#         :id=>3,
#         :name=>"Galaxyland",
#         :city=>"Edmonton",
#         :state=>"Alberta",
#         :country=>"Canada"
#       },
#       {
#         :id=>4,
#         :name=>"Heratage Park",
#         :city=>"Calgary",
#         :state=>"Alberta",
#         :country=>"Canada"
#       },
#       {
#         :id=>6,
#         :name=>"Playland (Vancouver)",
#         :city=>"Vancouver",
#         :state=>"British Columbia",
#         :country=>"Canada"
#       },
#       {
#         :id=>8,
#         :name=>"Crystal Palace Amusement Park",
#         :city=>"Dieppe",
#         :state=>"New Brunswick",
#         :country=>"Canada"
#       }
#     ]
#
#     output = {
#       "Alberta, Canada" => [
#         {
#           :id => 3,
#           :name => "Galaxyland",
#           :city => "Edmonton",
#           :state => "Alberta",
#           :country => "Canada"
#         },
#         {
#           :id => 4,
#           :name => "Heratage Park",
#           :city => "Calgary",
#           :state => "Alberta",
#           :country => "Canada"
#         },
#       ],
#       "British Columbia, Canada" => [
#         {
#           :id => 6,
#           :name => "Playland (Vancouver)",
#           :city => "Vancouver",
#           :state => "British Columbia",
#           :country => "Canada"
#         },
#       ],
#       "New Brunswick, Canada" => [
#         {
#           :id => 8,
#           :name => "Crystal Palace Amusement Park",
#           :city => "Dieppe",
#           :state => "New Brunswick",
#           :country => "Canada"
#         }
#       ]
#     }
#     expect(convert_to_state_country_hash(input)).to eq(output)
#   end
# end
