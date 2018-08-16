
def sort_array_asc(array)
  return array.sort
end

def sort_array_desc(array)
  return array.sort.reverse
end

def sort_array_char_count(array)
  array.sort do |a,b|
    if a.length == b.length
      0
    elsif a.length < b.length
      -1
    elsif a.length > b.length
      1
    end
  end
end

def swap_elements(array)
  array.sort do |a,b|
    if a == array[1] && b == array[2]
      1
    else
      0
    end
  end
end

def swap_elements_from_to(array, index, destination_index)
  array.sort do |a, b|
    if a == array[index] and b == array[destination_index]
      1
    else
      0
    end
  end
end

def reverse_array(array)
  return array.reverse
end

def kesha_maker(array)
  array.each do |word|
    word[2] = "$"
  end
end

def find_a(array)
  array.select {|word| word.start_with?("a")}
end

def sum_array(array)
  array.reduce(:+)
end

def add_s(array)
  array.each do |word|
    if word == array[1]
      word = array[1]
    else
      word[word.length] = "s"
    end
  end
end

def add_s1(array)
  array.each_with_index.collect do |word, i|
    unless i == 1
      word[word.length] = "#{word}s"
    end
  end
end
