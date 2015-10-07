def mi_converter
  puts
  puts "Convert from (m)etric to imperial, or (i)mperial to metric?"
  operation = gets.chomp.downcase

  def measurement
    puts
    puts "Convert (l)engths, (w)eights or (v)olumes?"
    operation = gets.chomp.downcase
    
    case operation
    when "l" then :length
    when "w" then :weight
    when "v" then :volumes
    else
      error
      measurement
    end
  end

  case operation
  when "m" then metric_to_imperial(measurement)
  when "i" then imperial_to_metric(measurement)
  else
    error
    mi_converter
  end  
end

def coefficients
  { miles_to_km: 1.609344,
  feet_to_metres: 0.3048,
  inches_to_cm: 2.54 }
end

def length(direction)
  case direction
  when :metric_to_imperial
    puts "I will convert kilometres, metres and centimetres into miles, feet and inches."
    print "Enter number of kilometres: "
    kilometres = get_integer
    print "Enter number of metres: "
    metres = get_integer
    print "Enter number of centimetres: "
    centimetres = get_integer
    puts " That is #{(kilometres / coefficients[:miles_to_km]).round(2)} miles, #{(metres / coefficients[:feet_to_metres]).round(2)} feet, and #{(centimetres / coefficients[:inches_to_cm]).round(2)} inches."
  when :imperial_to_metric
    puts "I will convert miles, feet and inches into kilometres, metres and centimetres."
    print "Enter number of miles: "
    miles = get_integer
    print "Enter number of feet: "
    feet = get_integer
    print "Enter number of inches: "
    inches = get_integer
    puts " That is #{(miles * coefficients[:miles_to_km]).round(2)} kilometres, #{(feet * coefficients[:feet_to_metres]).round(2)} metres, and #{(inches * coefficients[:inches_to_cm]).round(2)} centimetres." 
  end
end

def metric_to_imperial(measurement)
  case measurement
  when :length
    length(:metric_to_imperial)
    pause
  when :weight
    puts "Coming Soon in Calculator 2.0 - Weight Mode!!!!"
    pause
  when :volume
    puts "Coming Soon in Calculator 2.0 - Volume Mode!!!!"
    pause
  else
    error
    pause
  end 
end

def imperial_to_metric(measurement)
  case measurement
  when :length
    length(:imperial_to_metric)
    pause
  when :weight
    puts "Coming in Calculator 2.0... Weight Mode!!!!"
    pause
  when :volume
    puts "Coming in Calculator 2.0... Weight Mode!!!!"
    pause
  else
    error
    pause
  end
end