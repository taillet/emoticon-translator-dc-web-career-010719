# require modules here
require 'pry'
require 'yaml'

def load_library
  # code goes here
  emo = YAML.load_file(path)
  emo_hash = {}

  emo_hash["get_emoticon"] = {}
  emo_hash["get_meaning"] = {}

  emo.each do |english, emo|
    emo_hash["get_emoticon"][emo.first] = emo.last 
    emo_hash["get_meaning"][emo.last] = english
  end
  emo_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
