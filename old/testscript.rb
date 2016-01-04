require 'yaml'

cv = YAML.load_file('./cv.yaml')

puts cv.inspect

puts cv.to_yaml

puts cv.keys

