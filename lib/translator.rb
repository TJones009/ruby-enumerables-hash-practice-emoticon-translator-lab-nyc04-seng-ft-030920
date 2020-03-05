# require modules here

def load_library(file_path)
  library = YAML.load_file(file_path)
  result = {"get_meaning": {}, "get_emoticon":{}}
  library.each do |meaning, emoticons|
    result["get_meaning"][emoticons[1]] = meaning
    result["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  result
end

def get_japanese_emoticon(fiel_path = './lib/emoticons.yml', japanese_emoticon)
  lib = load_library(file_path)
  if lib["get_meaning"].include?(japanese_emoticon)
    library["get_meaning"][japanese_emoticon]
  else
    "Emoticon not found"
  end
end

def get_english_meaning
  # code goes here
end