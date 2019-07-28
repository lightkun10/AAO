def average(x, y)
  (x + y) / 2.0
end

def average_array(arr)
  # i = 0
  # sum = 0
  # while i < arr.length
  #   sum += arr[i]
  #   i += 1
  # end
  arr.sum / (arr.length * 1.0)
end

def repeat(string, number)
  repeats = ""
  number.times do
    repeats += string
  end
  repeats
end

def yell(string)
  string.upcase + "!"
end

def alternating_case(string)
  array = string.split(" ")
  i = 0
  while i < array.length
    if i.even?
      array[i] = array[i].upcase
    else 
      array[i] = array[i].downcase
    end
    i += 1
  end
  array.join(" ")
end
