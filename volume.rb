def volume_converter
  puts "What shape would you like a volume for?"
  print "(c)ube, (s)phere, c(y)linder, (r)ectangular prism, c(o)ne, ca(p)sule: " 
  operation = gets.chomp.downcase

  case operation
  when "c" then cube
  when "s" then sphere
  when "y" then cylinder
  when "r" then rectangular_prism
  when "o" then cone
  when "p" then capsule
  else
    error
    volume_converter
  end  
end

def cube
  print "What length are the cube's sides? "
  sides = get_float
  puts "The volume of the cube is #{sides**3}"
  pause
end

def sphere
    print "What is the radius of the sphere? "
    radius = get_float
    puts "The volume of the sphere is #{ (4.0/3) * Math::PI * radius ** 3}"
    pause
end

def cylinder
    print "What is the radius of the cylinder? "
    radius = get_float
    print "What is the height of the cylinder? "
    height = get_float
    puts "The volume of the cylinder is #{ Math::PI * radius**2 * height }"
    pause
end

def rectangular_prism
  print "Coming in Calculator 2.0... rectangular prisms!!!"
end

def cone
  print "Coming in Calculator 2.0... cones!!!"
end

def capsule
  print "Coming in Calculator 2.0... capsules!!!"
end


