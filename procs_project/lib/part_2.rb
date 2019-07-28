def reverser(str, &prc)
  prc.call(str.reverse)
end

def word_changer(str, &prc)
  new_str = []
  str = str.split(' ')
  str.each { |word| new_str << prc.call(word)}
  new_str = new_str.join(' ')
end

def greater_proc_value(num, proc_1, proc_2)
  a = proc_1.call(num)
  b = proc_2.call(num)
  if a > b
    a
  else
    b
  end
end

def and_selector(array, proc_1, proc_2)
  new_array = []
  array.each { |ele| new_array << ele if proc_1.call(ele) && proc_2.call(ele) }
  new_array
end

def alternating_mapper(array, proc_1, proc_2)
  array.each_with_index.map do |ele, i|
    if i.even?
      proc_1.call(ele)
    else
      proc_2.call(ele)
    end
  end
end