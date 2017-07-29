# your code goes here
def begins_with_r(array)
  array.each do |word|
    if word[0] != "r"
      return false
    end
  end
  return true
end

def contain_a(array)
  words_with_a = [];
  array.each do |word|
    if word.include?("a")
      words_with_a << word
    end
  end
  return words_with_a
end

def first_wa(array)
  array.find do |word|
    word[0..1] == "wa"
  end
end

def remove_non_strings(array)
  array.delete_if do |ele|
    ele.class != String
  end
end

# def count_elements(array)
#   # newHash = Hash.new(0)
#   # array.collect do |ele|
#   #   newHash[ele] += 1
#   # end
#   # newHash
#   count = {}
#   array.each do |ele|
#     count = (count[ele] += 1)
#   end
# end

def count_elements(array)
  names = array.uniq
  names.map do |name|
    name.merge({ :count => array.count {|item|
      item[:name] == name[:name]
      }
    })
  end
end

# def merge_data(keys, data)
#   keys.map do |key|
#     keys.merge(data[0])
#   end
# end

def merge_data(keys, data)
  keys.each do |name_hash|
    data.each do |hash|
      name_hash.merge!(hash[name_hash[:first_name]])
    end
  end
end

def find_cool(array)
  array.select do |ele|
    ele.values.include?("cool")
  end
end

def organize_schools(schools)
  result = {}
  schools.each do |school, school_hash|
    school_hash.each do |location, place|
      if result[place] == nil
        result[place] = [school]
      else
        result[place] << school
        end
      end
    end
  result
end
