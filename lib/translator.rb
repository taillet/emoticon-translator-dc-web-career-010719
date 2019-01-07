# require modules here
require 'pry'
require 'yaml'

def load_library(path)
  # code goes here
  emo = YAML.load_file(path)
  emo_hash = {}
  
  emo_hash["get_meaning"] = {}
  emo_hash["get_emoticon"] = {}

  emo.each do |english, emo|
    emo_hash["get_emoticon"][emo.first] = emo.last
    emo_hash["get_meaning"][emo.last] = english
  end
  emo_hash
end

def get_japanese_emoticon(path, emo)
  # code goes here
    emo_hash = load_library(path)
    find = emo_hash["get_emoticon"][emo]
    if find == nil
      find = "Sorry, that emoticon was not found"
    end
  find
end

def get_english_meaning(path, emo)
  # code goes here
    emo_hash = load_library(path)
    find = emo_hash["get_meaning"][emo]
    if find == nil
      find = "Sorry, that emoticon was not found"
    end
  find
end
