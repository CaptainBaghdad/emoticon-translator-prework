# require modules here
require "yaml"


def load_library(file)
  # code goes here
  new_hash = {}
  a = YAML.load_file("#{file}")
  new_hash["get_meaning"] = {}
  new_hash["get_emoticon"] = {}
  #puts a
  a.each do |k,v|
  new_hash["get_meaning"]["#{v.last}"] = "#{k}"
    # puts ele.class
    new_hash["get_emoticon"]["#{v.first}"] = "#{v.last}"
 
  
  
     
  
end
 
 new_hash
  
end

def get_japanese_emoticon(file,emoticon)
  # code goes here
  a = load_library(file)
  a["get_emoticon"].include?(emoticon) ? a["get_emoticon"]["#{emoticon}"] : "Sorry, that emoticon was not found" 
end

def get_english_meaning(file,emoticon)
  # code goes here
  a = YAML.load_file("#{file}")
  a.each do |k,v|
    puts k
    
  end 
   two_key_hash = load_library(file)
 
  
  
  
  
  
  
  
  
  
  
  
  
end