# require modules here
require 'YAML'
def load_library
  # code goes here
  emo = YAML.load_file(path)
  emo_hash = {}

  emo_hash["get_emoticon"] = {}
  emo_hash["get_meaning"] = {}

  emo.each do |english, emo|
    binding.pry
  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
