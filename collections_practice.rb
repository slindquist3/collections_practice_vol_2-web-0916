
def begins_with_r(tools)
  i = 0
  while i < tools.length
    if tools[i][0] != "r"
      return false
    end
      i += 1
    end
    return true
end


def contain_a(collection)
  new_collection = []
  collection.each do |element|
    if element.include?("a")
      new_collection << element
    end
  end
    new_collection
end


def first_wa(words)
  words.each do |word|
    word = word.to_s
    if word.include?("wa") == true
      return word
    end
  end
end


def remove_non_strings(array)
  array.delete_if {|item| item != item.to_s }
  array
end


def name_finder(array, name)
  array.each do |hash|
    if hash[:name] == name
      return hash
    end
  end
  false
end

def count_elements(array)
  results = []
  array.each do |item|
    hash = name_finder(results, item[:name])
    if hash
      hash[:count] += 1
    else
      item[:count] = 1
      results.push(item)
    end
  end
  results
end


def merge_data(keys, data)
  merged = []

  first_names = keys.to_a
  first_name_blake = first_names[0]
  first_name_ashley = first_names[1]

  shell = data.to_a
  inner_hash = shell[0].values
  blake_hash = inner_hash[0]
  ashley_hash = inner_hash[1]

  blake = first_name_blake.merge!(blake_hash)
  ashley = first_name_ashley.merge!(ashley_hash)
  first = merged << blake
  second = first << ashley
  second

end


def find_cool(hashes)
  cools = []
  hashes.each do |item|
    if item.values.include?("cool")
      cools.push(item)
    end
  end
  cools
end


def organize_schools(schools)
  result = {}
  schools.each do |school_set, data|
    data.each do |attribute, value|
      if !result.include?(value)
        result[value] = [school_set]
      else
        result[value].push(school_set)
      end
    end
  end
  result
end
