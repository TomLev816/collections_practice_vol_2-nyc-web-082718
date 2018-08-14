# your code goes here
require "pry"
def begins_with_r(array)
  array.all? do |word|
    word.start_with?("r")
  end
end

def contain_a(array)
  array.find_all do |word|
    word.include? "a"
  end
end

def first_wa(array)
  array.find do |word|
    word.slice(0,2) == "wa"
  end
end

def remove_non_strings(array)
  array.keep_if do |word|
    word.is_a? String
  end
end

def count_elements(array)
  array.each do |hash|
    hash[:count] = 0
    name = hash[:name]
    array.each do |hash2|
      if hash2[:name] == name
        hash[:count] += 1
      end
    end
  end.uniq
end

def merge_data(keys, data)
  hash = []
  keys.each do |person_name|
    name = person_name[:first_name]
    data.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        hash << merged_person
      end
    end
  end
  hash
end

def find_cool(hash)
  i = 0
  cool = []
  while i < hash.length
    if hash[i][:temperature] == 'cool'
      cool << hash[i]
    end
    i += 1
  end
  return cool
end

def organize_schools(schools)
  orgSchool = {}
  schools.each do |school, loc|
    if orgSchool.keys.include?(loc[:location])
      orgSchool[loc[:location]] << school
    else
      orgSchool[loc[:location]] = []
      orgSchool[loc[:location]] << school
    end
  end
  puts orgSchool
  return orgSchool
end
