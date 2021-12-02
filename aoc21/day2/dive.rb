def format_data(filename)
  File.read(filename).split
end

# part 1 
def end_position(data)
  horizontal_position = 0
  depth_position = 0

  data.each_cons(2) do |direction, unit|
    case direction
    when 'forward' then horizontal_position += unit.to_i
    when 'down'    then depth_position += unit.to_i
    when 'up'      then depth_position -= unit.to_i
    end
  end

  horizontal_position * depth_position
end 

# part 2
def end_position_two(data)
  aim = 0
  horizontal_position = 0
  depth_position = 0

  data.each_cons(2) do |direction, unit|
    case direction
    when 'forward'
      horizontal_position += unit.to_i
      depth_position += aim * unit.to_i
    when 'down'
       aim += unit.to_i
    when 'up'      
       aim -= unit.to_i
    end
  end

  horizontal_position * depth_position
end 

sonar_data = format_data('input.txt')
end_position(sonar_data)
end_position_two(sonar_data)