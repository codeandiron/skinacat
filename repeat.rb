def repeat(string, num=2)
  (num.times.inject([]) do |result, num|
    result << string 
  end).join(' ')
end

def repeat(string, num=2)
  result = []
  num.times do
    result << string
  end
  result.join(' ')
end

def repeat(string, num=2)
  if num == 1
    string
  else
    "#{string} #{repeat(string, num-1)}"
  end
end

puts repeat("hello")
puts repeat("hello", 4)
puts repeat("hello", 9)
