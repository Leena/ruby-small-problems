def formart_depths_file(report_file)
  File.read(report_file).split.map(&:to_i)
end

# Part 1 
def calculate_depth(sonar_data)
  counter = -1
  previous_depth = 0
  
  sonar_data.each do |sonar_depth_measure|
    counter += 1 if sonar_depth_measure > previous_depth
    previous_depth = sonar_depth_measure
  end
 counter
end

# Part 2
def sliding_window_measurement(sonar_data)
  sonar_data.each_cons(4).count { |a, _, _, b| b > a}
end

sonar_data = formart_depths_file('input.txt')
calculate_depth(sonar_data)
sliding_window_measurement(sonar_data)