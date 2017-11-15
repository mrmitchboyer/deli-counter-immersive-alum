# Write your code here.
def line(arr)
  if empty?(arr)
    puts "The line is currently empty."
  else
    puts current_line(arr)
  end
end

def take_a_number(arr, name)
  arr << name
  puts "Welcome, #{name}. You are number #{name_to_index(arr, name)} in line."
end

def now_serving(arr)
  if empty?(arr)
    puts "There is nobody waiting to be served!"
  else
    next_person = arr.shift
    puts "Currently serving #{next_person}."
  end
  arr
end

# Helper Methods
def empty?(arr)
  arr == []
end

def current_line(arr)
  message = "The line is currently: "
  arr.each_with_index do |name, index|
    message << "#{index + 1}. #{name} "
  end
  message.strip
end

def name_to_index(arr, name)
  arr.index(name) + 1
end
