#!/usr/bin/ruby

row_size = -1
column_size = -1
elements = nil
elements_max_length = nil


lines = Array.new
while line = gets
  lines.push(line)
end

row_size = lines.length


x = 0;
for line in lines do
  cols = line.split("\t")

  if column_size< 0 then
    column_size = cols.length
    #puts "#{column_size}"
    elements = Array.new(row_size)
    elements_max_length = Array.new(column_size)
  end

  elements[x] = Array.new(column_size) if elements[x].nil?
  for i in 0 .. column_size-1 do
    #puts "#{i} #{cols[i]}"

    elements_max_length[i] = 0 if elements_max_length[i].nil?
    if cols[i].length > elements_max_length[i] then
      elements_max_length[i] = cols[i].length
    end

    elements[x][i] = cols[i].chomp
  end

  x += 1
end


y = 0
for ele in elements do
  if y == 0 then

  end

  for z in 0 .. column_size-1 do
    print "|"
    print " #{ele[z]} "
    len = ele[z].length

   #puts "#{y} #{elements_max_length[z]}"

    for l in len .. elements_max_length[z] do
      l = l
      print " "
    end
  end
  puts "|"

end
