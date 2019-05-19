# Write your code here.

katz_deli = []

def line(katz_deli)
  if katz_deli == []
    puts "The line is currently empty."
  else
    katz_deli.each_with_index { |name, position| katz_deli[position].prepend "#{position + 1}. "}
    katz_deli[0].prepend "The line is currently: "
    puts katz_deli.join(" ")
  end
end

def take_a_number(katz_deli, name)
  katz_deli << name
  puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
  while katz_deli != []
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end
  puts "There is nobody waiting to be served!"
end